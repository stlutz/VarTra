*VarTra-Compiling
varTraRegister

	| name |
	name := VarTra registerName.
	litIndSet keysAndValuesDo: [:binding :node |
		binding key = name ifTrue: [^ node]].
	^ self global: name -> nil name: name