.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb



.section .text
	.weak _reset // Reset handler should be global

_reset:
	bl main // Jump to main
	b infiniteloop // If main returns, infinite loop

.weak _exit
_exit:
infiniteloop:
	b infiniteloop



.section .int_vector_table, "a", %progbits
int_vector_table:
	.word _estack // Specify the end of the stack for the processor's initial SP
	.word _reset
