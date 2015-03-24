/* --- first.s */
/* This is a comment */
.global main
.func main

main:
	mov r0, #2 	/* Put a 2 inside register r0 */
	bx lr	   	/* return from main */

