#include "pid.h"
#include "tim.h"
#include <string.h>

void pid_init(pid_t *pid, float Kp, float Ki, float Kd) {
  memset(pid, 0, sizeof(*pid));
  pid->Kp = Kp;
  pid->Ki = Ki;
  pid->Kd = Kd;
  pid->last_time = gettime_us();
}

void pid_setpoint(pid_t *pid, float setpoint) {
  pid->setpoint = setpoint;
}

float pid_update(pid_t *pid, float pos, float derr) {
  uint32_t time = gettime_us();
  float err = pid->setpoint - pos;

  uint32_t dt;
  if(time < pid->last_time) {
    // Did overflow occur?
    dt = (0xFFFFFFFF - pid->last_time) + time;
  } else {
    dt = time - pid->last_time;
  }
  pid->last_time = time;

  // TODO: Integrator windup handling
  pid->sum += (pid->last + err)/2.0 * dt;

  float res = pid->Kp*err + pid->Kd*derr + pid->Ki*pid->sum;
  res = res > 100.0 ? 100.0 : res;
  res = res < 0.0 ? 0.0 : res;

  pid->last = err;

  return res;
}
