/******************************************************************************
*	main.s
*	 by Alex Chadwick
*
*	A sample assembly code implementation of the ok01 operating system, that 
*	simply turns on the OK LED. 
******************************************************************************/

/*
* .section is a directive to our assembler telling it to place this code first.
* .globl is a directive to our assembler, that tells it to export this symbol
* to the elf file. Convention dictates that the symbol _start is used for the 
* entry point, so this all has the net effect of setting the entry point here.
* Ultimately, this is useless as the elf itself is not used in the final 
* result, and so the entry point really doesn't matter, but it aids clarity,
* allows simulators to run the elf, and also stops us getting a linker warning
* about having no entry point. 
*/
.section .init
.globl _start
_start:

/* 
* This command loads the physical address of the GPIO region into r0.
*/
ldr r0,=0x20200000


//
// Enable output on the GPIO 47 (OK led).
//

mov r1,#1
lsl r1,#21
str r1,[r0,#16]

//
// Set the GPIO 47 pin.
//

mov r1,#1
lsl r1,#15
str r1,[r0,#32]

Loop:
    b Loop
/*
* Loop over this forevermore
*/
