# PORT=/dev/ttyUSB1



CC=arm-none-eabi-gcc
CXX=arm-none-eabi-g++
LD=arm-none-eabi-ld
AS=arm-none-eabi-as
OBJCOPY=arm-none-eabi-objcopy


OBJS=src/main.o src/startup.o src/uart.o src/util.o src/i2c.o src/handlers.o src/bno055.o src/tim.o src/pid.o
LDSCRIPT=src/stm32f427.ld
DEFINES=-DSTM32F427_437xx -D__FPU_PRESENT=1 -D__FPU_USED -DARM_MATH_CM4
LIBS=
CMSIS=CMSIS
CMSIS_DeviceInclude=$(CMSIS)/include
CMSIS_DeviceSystem=$(CMSIS)/src/system_stm32f4xx.o
CMSIS_DeviceTimer=$(CMSIS)/src/stm32f4xx_tim.o
CMSIS_DeviceRCC=$(CMSIS)/src/stm32f4xx_rcc.o
CMSIS_DeviceGPIO=$(CMSIS)/src/stm32f4xx_gpio.o
CMSIS_LIBS=$(CMSIS)/lib
OBJS += $(CMSIS_DeviceSystem)
OBJS += $(CMSIS_DeviceTimer)
OBJS += $(CMSIS_DeviceRCC)
OBJS += $(CMSIS_DeviceGPIO)

CFLAGS=-std=c11 -Wall -Werror -mlittle-endian -mcpu=cortex-m4 -mthumb -fsingle-precision-constant
CFLAGS += -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS += -ffreestanding -nostdlib
CFLAGS += -g
CFLAGS += $(DEFINES) -I$(CMSIS_DeviceInclude)
CXXFLAGS=$(CFLAGS)


LDFLAGS=-mthumb -T$(LDSCRIPT) -L$(CMSIS_LIBS)
LDFLAGS+=-specs=nosys.specs
LDFLAGS+=-larm_cortexM4lf_math -lm -lc -lnosys
ASFLAGS=-mthumb

BINARY=main.bin


all: $(OBJS) $(BINARY)


%elf: $(OBJS) $(LDSCRIPT)
	$(CC) $(CFLAGS) $(OBJS) $(LDFLAGS) $(LIBS) -o $@

%bin: %elf
	$(OBJCOPY) -O binary -S $< $@

%hex: %elf
	$(OBJCOPY) -O ihex $< $@

%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) -c $< -o $@

flash: $(BINARY)
	python2 stm32loader.py -p $(PORT) -evw $<

clean:
	rm -f $(CMSIS_DeviceSystem) $(OBJS) $(BINARY) *.o *.bin *.hex *.elf src/*.o

.PHONY: clean
