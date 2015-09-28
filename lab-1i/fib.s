	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:


	push {r3, r4, r5, lr}

	mov r3,#1
	mov r4,#-1
	mov r5,#0
	subs r0,r0,#0
	bge Loop

	
Loop:

	add r5,r3,r4
	mov r4,r3
	mov r3,r5
	subs r0,r0,#1	

	bge Loop


	mov r0,r5     @return value


	pop {r3, r4, r5, pc}	


	.size fibonacci, .-fibonacci

	.end
