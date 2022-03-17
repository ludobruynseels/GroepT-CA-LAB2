stm8/

	#include "mapping.inc"
	#include "stm8s105k4.inc"
	
		segment 'rom'
		

	public timerInit
	
timerInit
		MOV TIM2_CR1,#%00000001 ; counter enable ON
		MOV TIM2_IER,#$00 ; no interrupts
		MOV TIM2_CCMR1,#%01100000 ; PWM mode 1 + CC1 as output
		MOV TIM2_CCER1,#%00000001 ; enable CC1 output

		mov TIM2_ARRH, #$00
		mov TIM2_ARRL, #$00
		mov TIM2_CCR1H, #$00
		mov TIM2_CCR1L, #$0
		
		mov TIM3_ARRH, #$ff
		mov TIM3_ARRL, #$ff
	
		mov TIM3_CCR1H, #$0
		mov TIM3_CCR1L, #$0
	
		mov TIM3_CNTRH, #0
		mov TIM3_CNTRL, #0
	
		mov TIM3_PSCR, #$0f
	
	
		mov	TIM3_IER, #1
		bres TIM3_SR1, #0
		bset TIM3_CR1, #0
	ret
	
	end
	