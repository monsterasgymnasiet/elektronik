/* --- sum04.s */
.global main
.func main

main:
	mov r1, #-5 	/* r1 <- -5 two complement */
	mov r2, #4      /* r2 <- 4 */
	add r0, r1, r2	/* r0 <- r1 + r2 */
	bx lr	   	/* return from main */

