from serial import Serial
from parse import parse
import sys
import matplotlib.pyplot as plt
import numpy as np

ser = Serial(sys.argv[1], 115200)

fig = plt.figure()
ax1 = fig.add_subplot(3, 1, 1)
ax2 = fig.add_subplot(3, 1, 2)
ax3 = fig.add_subplot(3, 1, 3)

ln1, = ax1.plot([])
ln2, = ax2.plot([])
ln3, = ax3.plot([])

plt.ion()
plt.show()

roll_data = []
pitch_data = []
yaw_data = []
n_points = 100

while(True):
    line = ser.readline()
    ser.reset_input_buffer()
    print(line)
    line = line.decode('ascii')
    print(line)
    res = parse("{} {} {}", line)
    print(res)
    if res:
        try:
            roll_data.append(float(res[0]))
            pitch_data.append(float(res[1]))
            yaw_data.append(float(res[2]))
        except:
            print("Failed to convert line")
            continue
        if len(yaw_data) > n_points:
            roll_data.pop(0)
            pitch_data.pop(0)
            yaw_data.pop(0)

        ln1.set_xdata(range(len(roll_data)))
        ln2.set_xdata(range(len(pitch_data)))
        ln3.set_xdata(range(len(yaw_data)))

        ln1.set_ydata(roll_data)
        ln2.set_ydata(pitch_data)
        ln3.set_ydata(yaw_data)
        ax1.relim()
        ax2.relim()
        ax3.relim()
        ax1.autoscale_view()
        ax2.autoscale_view()
        ax3.autoscale_view()
        plt.draw()
    plt.pause(0.0001)



