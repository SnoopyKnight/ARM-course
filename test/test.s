		AREA	hw2, CODE ,READONLY
		ENTRY
START	mov		r1, #1      		;r1 = 1
		mov		r2, #1				;r2 = 2
		
Loop2	mul		r3, r1, r2			;r1 * r2

LoopD	cmp		r3, #10
		ble		print
		sub		r3, r3, #10
		str		r4,	[r0]
		add		r4, r4, #1
		b		LoopD
		
Loop	add		r2, r2, #1			;r2 ++
		cmp		r2, #9				;if(r2 <=9)
		ble		Loop2				;jump Loop2
		
		sub		r2,	r2, #9			;r2 -9
		add		r1, r1, #1			;r1 ++
		cmp		r1, #9				;if(r1 <=9)
		ble		Loop2				;jump Loop2
		
		
print	str		r3, [r1]
		str		r4, [r0]	
		b			Loop
		
		end