#include "stm32f4xx.h"
#include "stm32f4xx_rcc.h"
#include "stm32f4xx_gpio.h"
#include "stm32f4xx_tim.h"

#include "uart.h"
#include "i2c.h"
#include "tim.h"
#include "util.h"
#include "bno055.h"
#include "pid.h"

#define N 1
#define W 2
#define S 3
#define E 4

#define CALIBRATE 0

int main() {
  SystemInit();

  tim_init();
  pwm_init();

  set_pwm(N, 0.0);
  set_pwm(W, 0.0);
  set_pwm(S, 0.0);
  set_pwm(E, 0.0);

  usart1_init(B115200);

  i2c_init();

  if(bno055_init() != 0) {
    usart1_puts("Failed to initialize BNO055\n");
    while(1);
  }
  usart1_puts("bno055 initialized\n");

#if CALIBRATE == 1
  bno055_do_calibration();
  while(1);
#else
  bno055_load_calibration();
  usart1_puts("BNO055 calibration loaded\n");
#endif

  pid_t pid_r, pid_p, pid_y;
  pid_init(&pid_r, 1.0, 0.0, 0.0, -10.0, 10.0);
  pid_init(&pid_p, 1.0, 0.0, 0.0, -10.0, 10.0);
  pid_init(&pid_y, 0.0, 0.0, 0.0, -10.0, 10.0);
  pid_setpoint(&pid_r, 0.0);
  pid_setpoint(&pid_p, 0.0);
  pid_setpoint(&pid_y, 0.0);
  float throttle = 50.0;

  float rpy[3];
  float gyro[3];
  periodic_init(100);
  while(1) {
    periodic_sleep();
    bno055_get_rpy(rpy);
    bno055_get_gyro(gyro);
    for(int i=0; i < sizeof(rpy); i++) {
      usart1_putc(((char *)rpy)[i]);
    }
    usart1_putc((char)0xff);

    float roll = pid_update(&pid_r, rpy[0], gyro[0]);
    float pitch = pid_update(&pid_p, rpy[1], gyro[1]);
    float yaw = pid_update(&pid_y, rpy[2], gyro[2]);

    set_pwm(N, throttle + pitch - yaw);
    set_pwm(S, throttle - pitch - yaw);
    set_pwm(W, throttle + roll + yaw);
    set_pwm(E, throttle - roll + yaw);
  }
  return 0;
}
