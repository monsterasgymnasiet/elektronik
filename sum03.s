/* --- sum03.s */
.global main
.func main

main:
	mov r1, #-2 	/* r1 <- 3 */
	mov r2, #4      /* r2 <- 4 */
	add r0, r1, r2	/* r0 <- r1 + r2 */
	bx lr	   	/* return from main */

