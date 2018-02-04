# UIUC ECE395 PCB Quadcopter Project
The goal of the project was to design a quadcopter with a PCB frame and as many
parts as possible soldered directly onto it. We put an STM32F4, and a BNO055 
IMU onto the board, and purchased external ESC's for the motors.


### Results
Due to difficulties with a parts order through the school, we were not able to 
sufficiently test the hardware before a final version was due. We missed a pull
up resistor on the BNO055's NRESET pin, causing it to constantly be in a state 
of reset, and making it unusable. We fixed it by taping our breakout board IMU 
onto the board, and connecting the necessary wires. After that, we had working 
hardware, but were not able to finish tuning the quadcopter before a failure 
broke one of the motors. We did not have a tuning rig, so we were forced to tune
it by attempting to hover at about floor level. Eventually, one of the motors 
that we used failed, ending the project with working hardware and software, but
incomplete tuning.
