		AREA	ex1,CODE,READONLY
		ENTRY
START	ADR		r1, TEXT
		ADD		r2, r1, #32
		LDRB	r0, [r1], #1
		MOV		r3, #8
		MOV		r6, #2
L1		MUL		r4, r3, r6
		SUBS	r5, r4, #1
L2		STRB	r0, [r2], #1
		SUBS	r5, r5, #1
		BNE		L2
		SUBS	r3, r3, #1
		BNE		L1
		
TEXT	= "*", &ff
		END