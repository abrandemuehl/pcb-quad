#ifndef PID_H
#define PID_H
#include <stdint.h>



typedef struct pid {
  float Kp;
  float Ki;
  float Kd;
  
  float sum;
  float last;
  uint32_t last_time;
  
  float setpoint;
} pid_t;


void pid_init(pid_t *pid, float Kp, float Ki, float Kd);
void pid_setpoint(pid_t *pid, float setpoint);
float pid_update(pid_t *pid, float pos, float derr);
#endif // PID_H
