accessing
instVar2: anObject

	| tempVar1 tempVar2 |
	tempVar1 := 1.
	tempVar2 := 2.
	tempVar1 := tempVar1 + tempVar2.
	instVar2 := anObject printString reversed asUppercase.
	instVar2 := tempVar1.