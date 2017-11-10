#ifndef BNO055_H
#define BNO055_H
#include <stdint.h>


// Returns 0 on success, 1 on error
// i2c_init must be called separately
uint8_t bno055_init();

// Get the current roll, pitch and yaw into the rpy array, which should have room for 3 floats
void bno055_get_rpy(float *rpy);


#endif // BNO055_H
