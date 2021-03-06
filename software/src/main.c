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

#define ANGLE_KILL 0


#define MOTOR1 4
#define MOTOR2 1
#define MOTOR3 2
#define MOTOR4 3
#define N MOTOR2
#define W MOTOR3
#define S MOTOR4
#define E MOTOR1

#define N_OFFSET (-5.0)
#define W_OFFSET (-4.0)
#define S_OFFSET (0.0)
#define E_OFFSET (0.0)

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
  pid_init(&pid_r, 0.12, 0.05, 0.0, -20.0, 20.0);
  pid_init(&pid_p, 0.12, 0.05, 0.0, -20.0, 20.0);
  pid_init(&pid_y, 0.0, 0.0, 0.0, -10.0, 10.0);
  pid_setpoint(&pid_r, 0.0);
  pid_setpoint(&pid_p, 0.0);
  pid_setpoint(&pid_y, 0.0);
  float throttle = 0.0;
  float max_throttle = 35.0;

  float step = (max_throttle-throttle)/100;

  float rpy[3];
  float gyro[3];
  periodic_init(100);

#if 0
  usart1_puts("entering sleep\n");
  for(int i=0; i < 5000; i++) {
    sleep_ms(1);
  }
  usart1_puts("out of sleep\n");
#endif

  // Bring throttle up to 50%
  for(int i=0; i < 200; i++) {
    periodic_sleep();
    bno055_get_rpy(rpy);
    bno055_get_gyro(gyro);

    float roll = pid_update(&pid_r, rpy[0], gyro[0]);
    float pitch = pid_update(&pid_p, rpy[1], gyro[1]);
    float yaw = pid_update(&pid_y, rpy[2], gyro[2]);

    set_pwm(N, throttle + pitch - yaw);
    set_pwm(S, throttle - pitch - yaw);
    set_pwm(W, throttle + roll + yaw);
    set_pwm(E, throttle - roll + yaw);
    throttle += step;
  }

  // Hold throttle at 50%
  for(int i=0; i < 200; i++) {
    periodic_sleep();
    bno055_get_rpy(rpy);
    bno055_get_gyro(gyro);

    for(int i=0; i < sizeof(rpy); i++) {
      usart1_putc(((char *)rpy)[i]);
    }
    usart1_putc((char)0xff);

#if ANGLE_KILL
    if(rpy[0] > 30.0 || rpy[0] < -30.0
        || rpy[1] > 30.0 || rpy[1] < -30.0) {
      set_pwm(N, 0);
      set_pwm(S, 0);
      set_pwm(W, 0);
      set_pwm(E, 0);
      while(1);
    }
#endif // ANGLE_KILL
    float roll = pid_update(&pid_r, rpy[0], gyro[0]);
    float pitch = pid_update(&pid_p, rpy[1], gyro[1]);
    float yaw = pid_update(&pid_y, rpy[2], gyro[2]);

    set_pwm(N, throttle - pitch - yaw + N_OFFSET);
    set_pwm(S, throttle + pitch - yaw + S_OFFSET);
    set_pwm(W, throttle + roll + yaw + W_OFFSET);
    set_pwm(E, throttle - roll + yaw + E_OFFSET);
  }
  // Bring throttle down to 0% 
  // for(int i=0; i < 300; i++) {
  while(1) {
    periodic_sleep();
    bno055_get_rpy(rpy);
    bno055_get_gyro(gyro);
    for(int i=0; i < sizeof(rpy); i++) {
      usart1_putc(((char *)rpy)[i]);
    }
    usart1_putc((char)0xff);
    /* usart1_puts("Orientation: "); */
    /* print_float(rpy[0]); */
    /* usart1_putc(' '); */
    /* print_float(rpy[1]); */
    /* usart1_putc(' '); */
    /* print_float(rpy[2]); */
    /* usart1_putc('\n'); */

    /* for(int i=0; i < sizeof(rpy); i++) { */
    /*   usart1_putc(((char *)rpy)[i]); */
    /* } */
    /* usart1_putc((char)0xff); */

#if ANGLE_KILL
    if(rpy[0] > 30.0 || rpy[0] < -30.0
        || rpy[1] > 30.0 || rpy[1] < -30.0) {
      set_pwm(N, 0);
      set_pwm(S, 0);
      set_pwm(W, 0);
      set_pwm(E, 0);
      while(1);
    }
#endif // ANGLE_KILL

    float roll = pid_update(&pid_r, rpy[0], gyro[0]);
    float pitch = pid_update(&pid_p, rpy[1], gyro[1]);
    float yaw = pid_update(&pid_y, rpy[2], gyro[2]);

    set_pwm(N, throttle - pitch - yaw + N_OFFSET);
    set_pwm(S, throttle + pitch - yaw + S_OFFSET);
    set_pwm(W, throttle + roll + yaw + W_OFFSET);
    set_pwm(E, throttle - roll + yaw + E_OFFSET);
  }

  step = max_throttle / 300;
  for(int i=0; i < 300; i++) {
    periodic_sleep();
    bno055_get_rpy(rpy);
    bno055_get_gyro(gyro);

    if(rpy[0] > 30.0 || rpy[0] < -30.0
        || rpy[1] > 30.0 || rpy[1] < -30.0) {
      set_pwm(N, 0);
      set_pwm(S, 0);
      set_pwm(W, 0);
      set_pwm(E, 0);
      while(1);
    }

    float roll = pid_update(&pid_r, rpy[0], gyro[0]);
    float pitch = pid_update(&pid_p, rpy[1], gyro[1]);
    float yaw = pid_update(&pid_y, rpy[2], gyro[2]);

    set_pwm(N, throttle - pitch - yaw + N_OFFSET);
    set_pwm(S, throttle + pitch - yaw + S_OFFSET);
    set_pwm(W, throttle + roll + yaw + W_OFFSET);
    set_pwm(E, throttle - roll + yaw + E_OFFSET);

    throttle -= step;
  }

  set_pwm(N, 0);
  set_pwm(S, 0);
  set_pwm(W, 0);
  set_pwm(E, 0);
  while(1);

  return 0;
}
