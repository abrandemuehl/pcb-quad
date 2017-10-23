MEMORY {
  FLASH (rx) : ORIGIN = 0x8000000,  LENGTH = 1024K
  RAM (! rx) : ORIGIN = 0x20000000, LENGTH = 192K
}

_estack = 0x20020000; /* Used by startup.s */

ENTRY(_reset)

SECTIONS {
  .int_vector_table : {
    . = ALIGN(4); /* Align the start of the section to 4 */
    *(.int_vector_table)
    . = ALIGN(4); /* Align the end of the section to 4 */
  } > FLASH
  .text : {
    . = ALIGN(4); /* Align the start of the section to 4 */
    *(.text)
    *(.rodata)
    *(.rodata*)

    /* C data constructors and destructors */
    KEEP(*(.init))
    KEEP(*(.fini))
    . = ALIGN(4); /* Align the end of the section to 4 */
  } > FLASH

  /* ARM unwinding things */
  .ARM.extab   : { *(.ARM.extab* .gnu.linkonce.armextab.*) } >FLASH
  .ARM : {
    __exidx_start = .;
    *(.ARM.exidx*)
    __exidx_end = .;
  } >FLASH

  /* C++ Constructor and Destructor Stuff */
  .preinit_array : {
    PROVIDE_HIDDEN (__preinit_array_start = .);
    KEEP (*(.preinit_array*))
    PROVIDE_HIDDEN (__preinit_array_end = .);
  } >FLASH
  .init_array : {
    PROVIDE_HIDDEN (__init_array_start = .);
    KEEP (*(SORT(.init_array.*)))
    KEEP (*(.init_array*))
    PROVIDE_HIDDEN (__init_array_end = .);
  } >FLASH
  .fini_array : {
    PROVIDE_HIDDEN (__fini_array_start = .);
    KEEP (*(.fini_array*))
    KEEP (*(SORT(.fini_array.*)))
    PROVIDE_HIDDEN (__fini_array_end = .);
  } >FLASH



  .data : { /* .data section for all static data */
    . = ALIGN(4); /* Align the start of the section to 4 */
    *(.data)
    *(.data*)
    . = ALIGN(4); /* Align the end of the section to 4 */
  } > RAM AT >FLASH /* Put in both FLASH and RAM */
  .bss : { /* .bss section for zero initialized data */
    . = ALIGN(4); /* Align the start of the section to 4 */
    __bss_start__ = .;
    *(.bss)
    *(.bss*)
    . = ALIGN(4); /* Align the end of the section to 4 */
    __bss_end__ = .;
  } > RAM AT >FLASH /* Put in both FLASH and RAM */

  /* Define the heap */
  .heap : {
    end = .;
    KEEP(*(.heap))
    __heap_end__ = .;
    __HeapLimit__ = __heap_end__;
  } >RAM AT >FLASH
}
