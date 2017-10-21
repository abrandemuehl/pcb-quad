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
    . = ALIGN(4); /* Align the end of the section to 4 */
  } > FLASH
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
}
