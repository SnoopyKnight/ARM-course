		AREA	hw1,CODE,READONLY
		ENTRY
START	ADR     r5, TEXT1
		ADD     r6, r5, #32
		ADR     r5, TEXT2
		ADD     r10, r9, #32
		MOV 	r8, #8
		MOV		r1, #1
L1		SUB		r3, r0,r1
		ADD		r3, r3,#1
		
		MOV 	r2, r3
L2		STRB    r7, [r6], #1
		SUBS	r2 ,r2, #1
		BGT		L2
		
		MOV		r2, r0
L3		STRB    r10, [r9], #1
 		STRB    r7, [r6], #1
 		SUBS	r2, r2, #1
 		BGT		L3
 		
 		ADD		r1,r1,#1
 		CMP		r1,r0
 		BLE		L1

TEXT1   = " ", &ff
TEXT2   = "*", &ff
        
        END
