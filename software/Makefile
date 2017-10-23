CC=arm-none-eabi-gcc
LD=arm-none-eabi-ld
AS=arm-none-eabi-as
OBJCOPY=arm-none-eabi-objcopy


OBJS=src/main.o src/startup.o
LDSCRIPT=src/stm32f427.ld
DEFINES=-DSTM32F427_437xx
LIBS=
CMSIS=CMSIS
CMSIS_DeviceInclude=$(CMSIS)/include
CMSIS_DeviceSystem=$(CMSIS)/src/system_stm32f4xx.o
CMSIS_LIBS=$(CMSIS)/lib
OBJS += $(CMSIS_DeviceSystem)
INCLUDE=include/

CFLAGS=-Wall -Werror -mcpu=cortex-m4 -mthumb $(DEFINES) -I$(INCLUDE) -I$(CMSIS_DeviceInclude)

LDFLAGS=-mthumb -T$(LDSCRIPT) -L$(CMSIS_LIBS)
ASFLAGS=-mthumb

BINARY=main.bin


all: $(OBJS) $(BINARY)


%elf: $(OBJS) $(LDSCRIPT)
	$(CC) $(OBJS) $(LDFLAGS) $(LIBS) -o $@

%bin: %elf
	$(OBJCOPY) -O binary -S $< $@

%hex: %elf
	$(OBJCOPY) -O ihex $< $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	$(AS) $(ASFLAGS) -c $< -o $@

flash: $(BINARY)
	python2 stm32loader.py -p /dev/ttyUSB0 -evw $<

clean:
	rm -f $(OBJS) $(BINARY) *.o *.bin *.hex *.elf

.PHONY: clean
