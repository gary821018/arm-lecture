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

	mov r3,#1	@result=1
	mov r4,#-1	@previos=-1
	mov r5,#0	@sum=0	
	cmp r0,#0	@if(x<=0)
	ble except

	
Loop:

	add r5,r3,r4	@sum=previos+result
	mov r4,r3	@previous=result
	mov r3,r5	@result=sum
	subs r0,r0,#1	@x--
	
	cmp r0,#0	@while (x>=0)
	bge Loop

	mov r0,r5  @retun value
	pop {r3,r4,r5,pc}

except:
	mov r0,#0	@return value 0
	pop {r3,r4,r5,pc}



	.size fibonacci, .-fibonacci

	.end
