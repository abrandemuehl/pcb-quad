#include "bno055.h"
#include <stdint.h>
#include "uart.h"
#include "i2c.h"
#include "util.h"
#include "tim.h"

#define BNO055_ADDR ((uint8_t)0x28)

#define BNO055_CHIP_ID ((uint8_t)0x00)
#define BNO055_PAGE_ID ((uint8_t)0x07)
#define BNO055_UNIT_SEL ((uint8_t)0x3B)
#define BNO055_OPR_MODE ((uint8_t)0x3D)
#define BNO055_PWR_MODE ((uint8_t)0x3E)
#define BNO055_SYS_TRIGGER ((uint8_t)0x3F)
#define BNO055_CALIB_STAT ((uint8_t)0x35)

#define BNO055_ACC_DATA_X_LSB ((uint8_t)0x08)
#define BNO055_MAG_DATA_X_LSB ((uint8_t)0x0E)
#define BNO055_GYR_DATA_X_LSB ((uint8_t)0x14)

#define BNO055_EUL_DATA_X_LSB ((uint8_t)0x1A)
#define BNO055_EUL_DATA_X_MSB ((uint8_t)0x1B)
#define BNO055_EUL_DATA_Y_LSB ((uint8_t)0x1C)
#define BNO055_EUL_DATA_Y_MSB ((uint8_t)0x1D)
#define BNO055_EUL_DATA_Z_LSB ((uint8_t)0x1E)
#define BNO055_EUL_DATA_Z_MSB ((uint8_t)0x1F)

#define BNO055_ACC_OFFSET_X_LSB ((uint8_t)0x55)
#define BNO055_ACC_OFFSET_X_MSB ((uint8_t)0x56)
#define BNO055_ACC_OFFSET_Y_LSB ((uint8_t)0x57)
#define BNO055_ACC_OFFSET_Y_MSB ((uint8_t)0x58)
#define BNO055_ACC_OFFSET_Z_LSB ((uint8_t)0x59)
#define BNO055_ACC_OFFSET_Z_MSB ((uint8_t)0x5a)

#define BNO055_MAG_OFFSET_X_LSB ((uint8_t)0x5b)
#define BNO055_MAG_OFFSET_X_MSB ((uint8_t)0x5c)
#define BNO055_MAG_OFFSET_Y_LSB ((uint8_t)0x5d)
#define BNO055_MAG_OFFSET_Y_MSB ((uint8_t)0x5e)
#define BNO055_MAG_OFFSET_Z_LSB ((uint8_t)0x5f)
#define BNO055_MAG_OFFSET_Z_MSB ((uint8_t)0x60)

#define BNO055_GYRO_OFFSET_X_LSB ((uint8_t)0x61)
#define BNO055_GYRO_OFFSET_X_MSB ((uint8_t)0x62)
#define BNO055_GYRO_OFFSET_Y_LSB ((uint8_t)0x63)
#define BNO055_GYRO_OFFSET_Y_MSB ((uint8_t)0x64)
#define BNO055_GYRO_OFFSET_Z_LSB ((uint8_t)0x65)
#define BNO055_GYRO_OFFSET_Z_MSB ((uint8_t)0x66)

#define BNO055_ACC_RADIUS_LSB ((uint8_t)0x67)
#define BNO055_ACC_RADIUS_MSB ((uint8_t)0x68)
#define BNO055_MAG_RADIUS_LSB ((uint8_t)0x69)
#define BNO055_MAG_RADIUS_MSB ((uint8_t)0x6a)


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

const uint8_t acc_offset_calib[] = {
  0x00, 0x00,
  0x00, 0x09, 
  0x00, 0x0C,
};

const uint8_t acc_radius_calib[] = {
  0x03, 0xE8,
};

const uint8_t gyro_offset_calib[] = {
  0x00, 0x00,
  0x00, 0x00, 
  0x00, 0x00,
};

const uint8_t mag_offset_calib[] = {
  0x06, 0xCC, 
  0x04, 0x59, 
  0x00, 0x00, 
};

const uint8_t mag_radius_calib[] = {
  0x04, 0x10,
};

static void bno055_set_mode(uint8_t mode);
static void bno055_get_vec(float *vec, uint8_t start_addr);
static uint8_t bno055_is_fully_calibrated();

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


  usart1_puts("Triggering reset\n");
  // Reset the system
  i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, SYS_TRIGGER_RST_SYS);
  sleep_ms(30);

  // Give it some time to come back up
  usart1_puts("Checking Chip ID\n");
  while((chip_id = i2c_read(BNO055_ADDR, BNO055_CHIP_ID)) != CHIP_ID) {
    usart1_puts("Incorrect chip id\n");
    sleep_ms(10);
  }

  sleep_ms(50);


  usart1_puts("Setting power mode\n");
  i2c_write(BNO055_ADDR, BNO055_PWR_MODE, PWR_MODE_NORMAL);
  // Delay a bit
  sleep_ms(10);



  i2c_write(BNO055_ADDR, BNO055_PAGE_ID, 0x00);
  // Delay a bit
  sleep_ms(10);

  /* // Make output euler angles be radians */
  i2c_write(BNO055_ADDR, BNO055_UNIT_SEL, EULER_UNIT);
  sleep_ms(10);

  usart1_puts("Triggering system\n");
  i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, 0x00);
  sleep_ms(10);

  // Go to IMU mode (use gyro and accelerometer, but not compass)
  usart1_puts("Setting mode\n");
  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  sleep_ms(20);

  bno055_set_mode(OPR_MODE_CONFIG);
  sleep_ms(25);

  i2c_write(BNO055_ADDR, BNO055_PAGE_ID, 0x00);
  sleep_ms(10);

  // Configure to use the external crystal
  i2c_write(BNO055_ADDR, BNO055_SYS_TRIGGER, SYS_TRIGGER_CLK_SEL);
  sleep_ms(10);

  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  sleep_ms(25);

  bno055_load_calibration();
  return 0;
}

void bno055_load_calibration() {
  bno055_set_mode(OPR_MODE_CONFIG);
  sleep_ms(30);

  uint8_t base = BNO055_ACC_OFFSET_X_LSB;
  for(int i = 0; i < sizeof(acc_offset_calib); i++) {
    i2c_write(BNO055_ADDR, base+i, acc_offset_calib[i]);
  }

  base = BNO055_ACC_RADIUS_LSB;
  for(int i = 0; i < sizeof(acc_radius_calib); i++) {
    i2c_write(BNO055_ADDR, base+i, acc_radius_calib[i]);
  }


  base = BNO055_GYRO_OFFSET_X_LSB;
  for(int i = 0; i < sizeof(gyro_offset_calib); i++) {
    i2c_write(BNO055_ADDR, base+i, gyro_offset_calib[i]);
  }

  base = BNO055_MAG_OFFSET_X_LSB;
  for(int i = 0; i < sizeof(mag_offset_calib); i++) {
    i2c_write(BNO055_ADDR, base+i, mag_offset_calib[i]);
  }

  base = BNO055_MAG_RADIUS_LSB;
  for(int i = 0; i < sizeof(mag_radius_calib); i++) {
    i2c_write(BNO055_ADDR, base+i, mag_radius_calib[i]);
  }

  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  sleep_ms(30);
}

void bno055_get_acc(float *acc) {
  bno055_get_vec(acc, BNO055_ACC_DATA_X_LSB);
  acc[0] /= 100.0;
  acc[1] /= 100.0;
  acc[2] /= 100.0;
}

void bno055_get_gyro(float *gyro) {
  bno055_get_vec(gyro, BNO055_GYR_DATA_X_LSB);
  gyro[0] /= 16.0;
  gyro[1] /= 16.0;
  gyro[2] /= 16.0;
}

void bno055_get_mag(float *mag) {
  bno055_get_vec(mag, BNO055_GYR_DATA_X_LSB);
  mag[0] /= 16.0;
  mag[1] /= 16.0;
  mag[2] /= 16.0;
}

void bno055_get_rpy(float *rpy) {
  float vec[3];
  bno055_get_vec(vec, BNO055_EUL_DATA_X_LSB);
  // x = yaw, y = roll, z = pitch
  float x = vec[0];
  float y = vec[1];
  float z = vec[2];

  // RPY in radians or degrees
#if EULER_UNIT == UNIT_SEL_EULER_RAD
  rpy[0] = y/900.0;
  rpy[1] = z/900.0;
  rpy[2] = x/900.0;
#else
  rpy[0] = y/16.0;
  rpy[1] = z/16.0;
  rpy[2] = x/16.0;
#endif

  while(rpy[0] > 360.0) rpy[0] -= 360.0;
  while(rpy[1] > 360.0) rpy[1] -= 360.0;
  while(rpy[2] > 360.0) rpy[2] -= 360.0;
}

void bno055_get_vec(float *vec, uint8_t start_addr) {
  uint8_t buf[2*3];
  uint8_t reg = start_addr;
  for(int i=0; i < 6; i++) {
    buf[i] = i2c_read(BNO055_ADDR, reg+i);
  }

  int16_t x = ((int16_t)buf[0]) | ((int16_t)buf[1] << 8);
  int16_t y = ((int16_t)buf[2]) | ((int16_t)buf[3] << 8);
  int16_t z = ((int16_t)buf[4]) | ((int16_t)buf[5] << 8);
  vec[0] = (float)x;
  vec[1] = (float)y;
  vec[2] = (float)z;
}

int8_t bno055_get_calib_status(uint8_t *sys, uint8_t *gyro, uint8_t *accel, uint8_t *mag) {
  int16_t result = i2c_read(BNO055_ADDR, BNO055_CALIB_STAT);
  if(result == -1) {
    return -1;
  }
  *sys = (result & (0x3 << 6)) >> 6;
  *gyro = (result & (0x3 << 4)) >> 4;
  *accel = (result & (0x3 << 2)) >> 2;
  *mag = (result & (0x3 << 0)) >> 0;
  return 0;
}

uint8_t bno055_is_fully_calibrated() {
  uint8_t sys, gyro, accel, mag;
  bno055_get_calib_status(&sys, &gyro, &accel, &mag);
  if (sys < 3 || gyro < 3 || accel < 3 || mag < 3) {
    return 0;
  }
  return 1;
}

void bno055_do_calibration() {
  uint8_t sys;
  uint8_t gyro;
  uint8_t accel;
  uint8_t mag;
  if(bno055_get_calib_status(&sys, &gyro, &accel, &mag) == -1) {
    usart1_puts("Failed to get calibration status\n");
    while(1);
  }

  if(accel != 3) {
    usart1_puts("Please place the BNO055 in 6 different stable configurations. The 6 stable positions could be in any direction, but make sure that the device is lying at least once perpendicular to the x, y and z axis.\n");
    uint8_t old_accel = accel;
    print_dec(accel);
    usart1_putc('\n');
    while(accel != 3) {
      bno055_get_calib_status(&sys, &gyro, &accel, &mag);
      if(old_accel != accel) {
        print_dec(accel);
        usart1_putc('\n');
      }
      old_accel = accel;
    }
  }
  usart1_puts("Accelerometer Calibrated Successfully\n");

  i2c_write(BNO055_ADDR, BNO055_PAGE_ID, 0x00);
  // Delay a bit
  sleep_ms(10);

  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  if(gyro != 3) {
    usart1_puts("Place the device in a stable position for a few seconds\n");
    uint8_t old_gyro;
    print_dec(gyro);
    usart1_putc('\n');
    while(gyro != 3) {
      int16_t res = bno055_get_calib_status(&sys, &gyro, &accel, &mag);
      if(res == -1) {
        usart1_puts("Failed to read CALIB_STAT\n");
        while(1);
      }
      print_dec(gyro);
      usart1_putc('\n');
      if(old_gyro != gyro) {
        print_dec(gyro);
        usart1_putc('\n');
      }
      old_gyro = gyro;
    }
  }
  usart1_puts("Gyroscope Calibrated Successfully\n");


  bno055_set_mode(OPR_MODE_FUSION_NDOF);
  if(mag != 3) {
    usart1_puts("Make some random movements\n");
    uint8_t old_mag;
    print_dec(mag);
    usart1_putc('\n');
    old_mag = mag;
    while(mag != 3) {
      bno055_get_calib_status(&sys, &gyro, &accel, &mag);
      if(old_mag != mag) {
        print_dec(mag);
        usart1_putc('\n');
      }
      old_mag = mag;
    }
  }
  usart1_puts("Magnetometer Calibrated Successfully\n");

  if(!bno055_is_fully_calibrated()) {
    usart1_puts("BNO055 not fully calibrated for some reason\n");
    while(1);
  }

  bno055_set_mode(OPR_MODE_CONFIG);
  sleep_ms(30);

  // Print accelerometer calibration values
  float acc_offset[3];
  bno055_get_vec(acc_offset, BNO055_ACC_OFFSET_X_LSB);
  usart1_puts("Accelerometer offsets: ");
  print_hex(acc_offset[0]);
  usart1_putc(' ');
  print_hex(acc_offset[1]);
  usart1_putc(' ');
  print_hex(acc_offset[2]);
  usart1_putc(' ');
  usart1_putc('\n');
  int16_t acc_lsb = i2c_read(BNO055_ADDR, BNO055_ACC_RADIUS_LSB);
  int16_t acc_msb = i2c_read(BNO055_ADDR, BNO055_ACC_RADIUS_MSB);
  usart1_puts("Accelerometer radius: ");
  print_hex(acc_lsb | (acc_msb << 8));
  usart1_putc('\n');


  // Print the gyroscope calibration values 
  float gyro_offset[3];
  bno055_get_vec(gyro_offset, BNO055_GYRO_OFFSET_X_LSB);
  usart1_puts("Gyroscope offsets: ");
  print_hex(gyro_offset[0]);
  usart1_putc(' ');
  print_hex(gyro_offset[1]);
  usart1_putc(' ');
  print_hex(gyro_offset[2]);
  usart1_putc(' ');
  usart1_putc('\n');


  // Print magnetometer calibration values
  float mag_offset[3];
  bno055_get_vec(mag_offset, BNO055_MAG_OFFSET_X_LSB);
  usart1_puts("Magnetometer offsets: ");
  print_hex(mag_offset[0]);
  usart1_putc(' ');
  print_hex(mag_offset[1]);
  usart1_putc(' ');
  print_hex(mag_offset[2]);
  usart1_putc(' ');
  usart1_putc('\n');
  int16_t mag_lsb = i2c_read(BNO055_ADDR, BNO055_MAG_RADIUS_LSB);
  int16_t mag_msb = i2c_read(BNO055_ADDR, BNO055_MAG_RADIUS_MSB);
  usart1_puts("Magnetometer radius: ");
  print_hex(mag_lsb | (mag_msb << 8));
  usart1_putc('\n');

  usart1_puts("BNO055 Fully Calibrated!");
  bno055_set_mode(OPR_MODE_FUSION_NDOF);
}

void bno055_set_mode(uint8_t mode) {
  i2c_write(BNO055_ADDR, BNO055_OPR_MODE, mode);
  // Need to delay for >20 ms
  sleep_ms(30);
}
