#ifndef BNO055_H
#define BNO055_H
#include <stdint.h>

// Returns 0 on success, 1 on error
// i2c_init must be called separately
uint8_t bno055_init();

// Runs the calibration setup for the device while printing instructions
void bno055_do_calibration();

// Get the current roll, pitch and yaw into the rpy array, which should have room for 3 floats
void bno055_get_rpy(float *rpy);

void bno055_get_acc(float *acc);
void bno055_get_gyro(float *gyro);
void bno055_get_mag(float *mag);
void bno055_load_calibration();

#endif // BNO055_H
