stm8/
	;------------------------------------------------------
	; SEGMENT MAPPING FILE AUTOMATICALLY GENERATED BY STVD
	; SHOULD NOT BE MANUALLY MODIFIED.
	; CHANGES WILL BE LOST WHEN FILE IS REGENERATED.
	;------------------------------------------------------
	BYTES			; The following addresses are 8 bits long
	segment byte at 0-FF 'ram0'

	WORDS			; The following addresses are 16 bits long
	segment byte at 100-5FF 'ram1'

	WORDS			; The following addresses are 16 bits long
	segment byte at 600-7FF 'stack'

	WORDS			; The following addresses are 16 bits long
	segment byte at 4000-43FF 'eeprom'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8080-FFFF 'rom'

	WORDS			; The following addresses are 16 bits long
	segment byte at 8000-807F 'vectit'

		END
