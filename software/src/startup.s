.syntax unified
.cpu cortex-m4
.fpu vfp
.thumb



.section .text
	.weak _reset // Reset handler should be global

_reset:
	bl main // Jump to main
	b infiniteloop // If main returns, infinite loop

Default_Interrupt_Handler:
.weak _exit
_exit:
.weak __end__
__end__:
infiniteloop:
	b infiniteloop


.section .int_vector_table, "a", %progbits
int_vector_table:
	.word _estack // Specify the end of the stack for the processor's initial SP
	// Every interrupt vector here MUST have a LSB of 1 in order for the ARM CPU to execute it as thumb code
	.word _reset+1 // Reset
	.word Default_Interrupt_Handler // NMI
	.word HardFault_Handler // HardFault
	.word Default_Interrupt_Handler // MemManage
	.word Default_Interrupt_Handler // BusFault
	.word Default_Interrupt_Handler // UsageFault
	.word Default_Interrupt_Handler // Reserved
	.word Default_Interrupt_Handler // SVCall
	.word Default_Interrupt_Handler // Debug Monitor
	.word Default_Interrupt_Handler // Reserved
	.word Default_Interrupt_Handler // PendSV
	.word Default_Interrupt_Handler // SysTick
	.word Default_Interrupt_Handler // WWDG
	.word Default_Interrupt_Handler // PVD
	.word Default_Interrupt_Handler // TAMP_STAMP
	.word Default_Interrupt_Handler // RTC_WKUP
	.word Default_Interrupt_Handler // FLASH
	.word Default_Interrupt_Handler // RCC
	.word Default_Interrupt_Handler // EXTI0
	.word Default_Interrupt_Handler // EXTI1
	.word Default_Interrupt_Handler // EXTI2
	.word Default_Interrupt_Handler // EXTI3
	.word Default_Interrupt_Handler // EXTI4
	.word Default_Interrupt_Handler // DMA1_Stream0
	.word Default_Interrupt_Handler // DMA1_Stream1
	.word Default_Interrupt_Handler // DMA1_Stream2
	.word Default_Interrupt_Handler // DMA1_Stream3
	.word Default_Interrupt_Handler // DMA1_Stream4
	.word Default_Interrupt_Handler // DMA1_Stream5
	.word Default_Interrupt_Handler // DMA1_Stream6
	.word Default_Interrupt_Handler // ADC
	.word Default_Interrupt_Handler // CAN1_TX
	.word Default_Interrupt_Handler // CAN1_RX0
	.word Default_Interrupt_Handler // CAN1_RX1
	.word Default_Interrupt_Handler // CAN1_SCE
	.word Default_Interrupt_Handler // EXTI9_5
	.word Default_Interrupt_Handler // TIM1_BRK_TIM9
	.word Default_Interrupt_Handler // TIM1_UP_TIM10
	.word Default_Interrupt_Handler // TIM1_TRG_COM_TIM11
	.word Default_Interrupt_Handler // TIM1_CC
	.word Default_Interrupt_Handler // TIM2
	.word Default_Interrupt_Handler // TIM3
	.word Default_Interrupt_Handler // TIM4
	.word Default_Interrupt_Handler // I2C1_EV
	.word Default_Interrupt_Handler // I2C1_ER
	.word Default_Interrupt_Handler // I2C2_EV
	.word Default_Interrupt_Handler // I2C2_ER
	.word Default_Interrupt_Handler // SPI1
	.word Default_Interrupt_Handler // SPI2
	.word Default_Interrupt_Handler // USART1
	.word Default_Interrupt_Handler // USART2
	.word Default_Interrupt_Handler // USART3
	.word Default_Interrupt_Handler // EXTI15_10
	.word Default_Interrupt_Handler // RTC_Alarm
	.word Default_Interrupt_Handler // OTG_FS WKUP
	.word Default_Interrupt_Handler // TIM8_BRK_TIM12
	.word Default_Interrupt_Handler // TIM8_UP_TIM13
	.word Default_Interrupt_Handler // TIM8_TRG_COM_TIM14
	.word Default_Interrupt_Handler // TIM8_CC
	.word Default_Interrupt_Handler // DMA1_Stream7
	.word Default_Interrupt_Handler // FSMC
	.word Default_Interrupt_Handler // SDIO
	.word Default_Interrupt_Handler // TIM5
	.word Default_Interrupt_Handler // SPI3
	.word Default_Interrupt_Handler // UART4
	.word Default_Interrupt_Handler // UART5
	.word Default_Interrupt_Handler // TIM6_DAC
	.word Default_Interrupt_Handler // TIM7
	.word Default_Interrupt_Handler // DMA2_Stream0
	.word Default_Interrupt_Handler // DMA2_Stream1
	.word Default_Interrupt_Handler // DMA2_Stream2
	.word Default_Interrupt_Handler // DMA2_Stream3
	.word Default_Interrupt_Handler // DMA2_Stream4
	.word Default_Interrupt_Handler // CAN2_TX
	.word Default_Interrupt_Handler // CAN2_RX0
	.word Default_Interrupt_Handler // CAN2_RX1
	.word Default_Interrupt_Handler // CAN2_SCE
	.word Default_Interrupt_Handler // OTG_FS
	.word Default_Interrupt_Handler // DMA2_Stream5
	.word Default_Interrupt_Handler // DMA2_Stream6
	.word Default_Interrupt_Handler // DMA2_Stream7
	.word Default_Interrupt_Handler // USART6
