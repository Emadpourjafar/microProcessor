/*
 * OHMsanj.asm
 *
 *  Created: 1/25/2019 9:10:39 AM
 *   Author: Cloner
 */

		OUT SPL,R16
		LDI R16,$FF
		OUT DDRB,R16
		OUT DDRC,R16
		CLR R16
		OUT DDRA,R16
		OUT ADMUX,R16
		LDI R16,$C0
		OUT ADCSRA,R16
loop:	SBI ADCSRA,6
wait:	SBIS ADCSRA,4
		RJMP wait
		SBI ADCSRA,4
		IN R16,ADCL
		OUT PORTB,R16
		rjmp loop
