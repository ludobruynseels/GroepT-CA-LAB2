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

		mov TIM2_ARRH, #$8d
		mov TIM2_ARRL, #$b9
		mov TIM2_CCR1H, #$46
		mov TIM2_CCR1L, #$dc

	ret
	
	end
	