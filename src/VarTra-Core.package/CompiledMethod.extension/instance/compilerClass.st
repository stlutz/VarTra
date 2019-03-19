*VarTra-Core
compilerClass
	^self methodClass 
		ifNil: [Compiler] 
		ifNotNil: [:class | class compilerClass].