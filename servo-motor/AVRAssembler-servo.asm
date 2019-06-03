/*
 * AVRAssembler_servo.asm
 *
 *  Created: 1/27/2019 3:01:07 PM
 *   Author: Cloner
 */ 
	.include"m32def.inc"
	.ORG 0
	RJMP START

 Start:
      clr R16
      out sfior,R16
      ldi R17,$FF
      out ddrB,R17
      out ddrD,R17
      clr R16
      out ddrA,R16 ;input
      out ddrC,R16 ;input
      out tcnt0,R16
      ldi R16,$69 //fast pwm 0110  1001
      out tccr0,R16

looper:      
      in R16,pinA
      out ocr0,R16
      in R16,pinC
      out portD,R16
      rjmp looper
