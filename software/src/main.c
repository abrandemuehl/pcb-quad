#include "stm32f4xx.h"
#include "stm32f4xx_rcc.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_tim.h"

#include "uart.h"
#include "i2c.h"
#include "tim.h"
#include "util.h"
#include "bno055.h"
#include "kalman.h"
#include <arm_math.h>

#define MS (6250)
#define BNO055_ADDR ((uint8_t)0x28)
#define BNO055_CHIP_ID ((uint8_t)0x00)
#define BNO055_UNIT_SEL ((uint8_t)0x3B)


int main() {
  SystemInit();

  tim_init();
  pwm_init();

  //test PWM
  set_pwm(1, 20.0);
  set_pwm(2, 40.0);
  set_pwm(3, 60.0);
  set_pwm(4, 80.0);

  usart1_init(B115200);

  i2c_init();

  if(bno055_init() != 0) {
    usart1_puts("Failed to initialize BNO055\n");
    while(1);
  }
  usart1_puts("bno055 initialized\n");

  bno055_calibrate();

  kalman_t kal_roll, kal_pitch, kal_yaw;

  kalman_init(&kal_roll);
  kalman_init(&kal_pitch);
  kalman_init(&kal_yaw);

  float acc[3];
  float gyro[3];
  float mag[3];
  float kal_roll_angle;
  float kal_pitch_angle;
  float kal_yaw_angle;
  while(1) {
    bno055_get_acc(acc);
    bno055_get_gyro(gyro);
    bno055_get_mag(mag);

    float acc_angle_x = atan2f(acc[1], acc[2]) * 180.0/3.14159265358979323;
    float acc_angle_y = atan2f(acc[0], acc[2]) * 180.0/3.14159265358979323;
    float acc_angle_z = atan2f(acc[0], acc[1]) * 180.0/3.14159265358979323;

    float dt = 0.01;
    kal_roll_angle = kalman_update(&kal_roll, acc_angle_x, gyro[0], dt);
    kal_pitch_angle = kalman_update(&kal_pitch, acc_angle_y, gyro[1], dt);
    kal_yaw_angle = kalman_update(&kal_yaw, acc_angle_z, gyro[2], dt);

    print_float(kal_roll_angle);
    usart1_putc(' ');
    print_float(kal_pitch_angle);
    usart1_putc(' ');
    print_float(kal_yaw_angle);
    usart1_puts("\n");
    for(int i=0; i < MS*10; i++);
  }
  return 0;
}
