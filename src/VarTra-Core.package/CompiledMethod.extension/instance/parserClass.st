*VarTra-Core
parserClass
	^self methodClass 
		ifNil: [self compilerClass parserClass] 
		ifNotNil: [:class | class parserClass].