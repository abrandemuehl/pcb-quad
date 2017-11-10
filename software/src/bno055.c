#include "bno055.h"
#include <stdint.h>
#include "uart.h"
#include "i2c.h"
#include "util.h"

#define MS (6250)
#define BNO055_ADDR ((uint8_t)0x28)


#define BNO055_CHIP_ID ((uint8_t)0x00)
#define BNO055_PAGE_ID ((uint8_t)0x07)
#define BNO055_UNIT_SEL ((uint8_t)0x3B)
#define BNO055_OPR_MODE ((uint8_t)0x3D)
#define BNO055_PWR_MODE ((uint8_t)0x3E)
#define BNO055_SYS_TRIGGER ((uint8_t)0x3F)

#define BNO055_EUL_DATA_X_LSB ((uint8_t)0x1A)
#define BNO055_EUL_DATA_X_MSB ((uint8_t)0x1B)
#define BNO055_EUL_DATA_Y_LSB ((uint8_t)0x1C)
#define BNO055_EUL_DATA_Y_MSB ((uint8_t)0x1D)
#define BNO055_EUL_DATA_Z_LSB ((uint8_t)0x1E)
#define BNO055_EUL_DATA_Z_MSB ((uint8_t)0x1F)

#define CHIP_ID ((uint8_t)0xA0)

#define OPR_MODE_CONFIG               ((uint8_t)0x00)
#define OPR_MODE_ACCONLY              ((uint8_t)0x01)
#define OPR_MODE_MAGONLY              ((uint8_t)0x02)
#define OPR_MODE_GYROONLY             ((uint8_t)0x03)
#define OPR_MODE_ACCMAG               ((uint8_t)0x04)
#define OPR_MODE_ACCGYRO              ((uint8_t)0x05)
#define OPR_MODE_MAGGYRO              ((uint8_t)0x06)
#define OPR_MODE_AMG                  ((uint8_t)0x07)
#define OPR_MODE_FUSION_IMU           ((uint8_t)0x08)
#define OPR_MODE_FUSION_COMPASS       ((uint8_t)0x09)
#define OPR_MODE_FUSION_M4G           ((uint8_t)0x0A)
#define OPR_MODE_FUSION_NDOF_FMC_OFF  ((uint8_t)0x0B)
#define OPR_MODE_FUSION_NDOF          ((uint8_t)0x0C)

#define SYS_TRIGGER_RST_SYS   ((uint8_t)0x20)
#define SYS_TRIGGER_RST_INT   ((uint8_t)0x40)
#define SYS_TRIGGER_CLK_SEL   ((uint8_t)0x80)
#define SYS_TRIGGER_SELF_TEST ((uint8_t)0x80)

#define PWR_MODE_NORMAL   ((uint8_t)0x00)
#define PWR_MODE_LOW      ((uint8_t)0x01)
#define PWR_MODE_SUSPEND  ((uint8_t)0x02)

#define UNIT_SEL_ACC_MS2    (0x00)
#define UNIT_SEL_ACC_MG     (0x01)
#define UNIT_SEL_GYRO_DPS   (0x00)
#define UNIT_SEL_GYRO_RPS   (0x02)
#define UNIT_SEL_EULER_DEG  (0x00)
#define UNIT_SEL_EULER_RAD  (0x04)
#define UNIT_SEL_TEMP_C     (0x00)
#define UNIT_SEL_TEMP_F     (0x10)

#define EULER_UNIT UNIT_SEL_EULER_DEG

static void bno055_set_mode(uint8_t mode);

uint8_t bno055_init() {
  // Assumes i2c is already initialized
  usart1_puts("Checking chip id\n");
  uint16_t chip_id;
  // Chip might not have booted yet, so maybe we should retry this a couple times
  if((chip_id = i2c_read(BNO055_ADDR, BNO055_CHIP_ID)) != CHIP_ID) {
    usart1_puts("I2C Device at 0x28 is not a BNO055, mismatched CHIP_ID\n");
    return 1;
  }

  usart1_puts("Entering config mode\n");
  // Go to config mode
  bno055_set_mode(OPR_MODE_CONFIG);


  /* i2c_write(BNO055_ADDR, BNO055_PAGE_ID, 0x00); */
  /* // Delay a bit */
  /* for(int i=0; i < 10*MS; i++); */

  usart1_puts("Triggering reset\n");
  // Reset the system
  i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, SYS_TRIGGER_RST_SYS);
  for(int i=0; i < 100*MS; i++);

  // Give it some time to come back up
  usart1_puts("Checking Chip ID\n");
  while((chip_id = i2c_read(BNO055_ADDR, BNO055_CHIP_ID)) != CHIP_ID) {
    usart1_puts("Incorrect chip id\n");
    for(int i=0; i < 100*MS; i++);
  }

  /* // Configure to use the external crystal */
  /* i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, SYS_TRIGGER_CLK_SEL); */
  /* for(int i=0; i < 10*MS; i++); */


  usart1_puts("Setting power mode\n");
  i2c_write(BNO055_ADDR, BNO055_PWR_MODE, PWR_MODE_NORMAL);
  // Delay a bit
  for(int i=0; i < 10*MS; i++);



  /* i2c_write(BNO055_ADDR, BNO055_PAGE_ID, 0x00); */
  /* // Delay a bit */
  /* for(int i=0; i < 10*MS; i++); */

  /* // Make output euler angles be radians */
  /* i2c_write(BNO055_ADDR, BNO055_UNIT_SEL, EULER_UNIT); */
  /* for(int i=0; i < 10*MS; i++); */

  usart1_puts("Triggering system\n");
  i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, 0x00);
  for(int i=0; i < 10*MS; i++);

  // Go to NDOF mode
  usart1_puts("Setting mode\n");
  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  return 0;
}

void bno055_get_rpy(float *rpy) {
  uint8_t buf[2*3];
  uint8_t reg = BNO055_EUL_DATA_X_LSB;
  for(int i=0; i < 6; i++) {
    buf[i] = i2c_read(BNO055_ADDR, reg+i);
  }

  // x = yaw, y = roll, z = pitch
  int16_t x = ((int16_t)buf[0]) | ((int16_t)buf[1] << 8);
  int16_t y = ((int16_t)buf[2]) | ((int16_t)buf[3] << 8);
  int16_t z = ((int16_t)buf[4]) | ((int16_t)buf[5] << 8);

  // RPY in radians or degrees
#if EULER_UNIT == UNIT_SEL_EULER_RAD
  rpy[0] = ((float)y)/900.0;
  rpy[1] = ((float)z)/900.0;
  rpy[2] = ((float)x)/900.0;
#else
  rpy[0] = ((float)y)/16.0;
  rpy[1] = ((float)z)/16.0;
  rpy[2] = ((float)x)/16.0;
#endif
}



void bno055_set_mode(uint8_t mode) {
  // Go to NDOF mode
  i2c_write(BNO055_ADDR, BNO055_OPR_MODE, mode);
  // Need to delay for >20 ms
  for(int i=0; i < 30*MS; i++);
}
