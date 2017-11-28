from serial import Serial
from parse import parse
import sys
import matplotlib.pyplot as plt
import numpy as np
import struct
from datetime import datetime

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

n_points = 100

data = np.zeros((3,n_points))

# Synchronize
b = ser.read(1)
while(b != b'\xff'):
    print(b)
    b = ser.read(1)


# ax1.set_ylim((0,360))
# ax2.set_ylim((0,360))
# ax3.set_ylim((0,360))

ln1.set_xdata(range(n_points))
ln2.set_xdata(range(n_points))
ln3.set_xdata(range(n_points))

while(True):
    t = datetime.now()
    line = ser.read(13)
    # ser.reset_input_buffer()
    print(line)
    # print(len(line))
    # line = line.decode('ascii')
    # print(line)
    # res = parse("{} {} {}", line)
    r,p,y = struct.unpack('fff', bytes(line[:-1]))
    data = np.roll(data, 1, 1)
    data[0,-1] = r
    data[1,-1] = p
    data[2,-1] = y


    ln1.set_ydata(data[0])
    ln2.set_ydata(data[1])
    ln3.set_ydata(data[2])
    ax1.relim()
    ax2.relim()
    ax3.relim()
    ax1.autoscale_view()
    ax2.autoscale_view()
    ax3.autoscale_view()
    plt.draw()
    plt.pause(0.0001)
    now = datetime.now()
    print(now-t)
    t = now



