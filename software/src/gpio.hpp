#ifndef GPIO_H
#define GPIO_H
#include "stm32f4xx.h"


class GPIO {
  public:
    enum Pin {
      PIN0  = 0,
      PIN1  = 1,
      PIN2  = 2,
      PIN3  = 3,
      PIN4  = 4,
      PIN5  = 5,
      PIN6  = 6,
      PIN7  = 7,
      PIN8  = 8,
      PIN9  = 9,
      PIN10 = 10,
      PIN11 = 11,
      PIN12 = 12,
      PIN13 = 13,
      PIN14 = 14,
      PIN15 = 15,
    };

    enum Mode {
      INPUT=0x0,
      OUTPUT=0x1,
      ALTERNATE=0x2,
      ANALOG=0x3,
    };

    enum OType {
      PUSHPULL=0x0,
      OPENDRAIN=0x1,
    };

    enum OSpeed {
      LOW=0x0,
      MEDIUM=0x1,
      HIGH=0x2,
      VERYHIGH=0x3,
    };

    enum IPull {
      NONE=0x0,
      UP=0x1,
      DOWN=0x2,
    };

    GPIO(GPIO_TypeDef *bank);

    bool SetMode(Pin pin, Mode mode);
    bool SetOType(Pin pin, OType type);
    bool SetOSpeed(Pin pin, OSpeed speed);
    bool SetIPull(Pin pin, IPull pull);

    void Set(Pin pin);
    void Reset(Pin pin);
    bool Get(Pin pin);

  private:
    GPIO_TypeDef *bank_;
};
#endif // GPIO_H
