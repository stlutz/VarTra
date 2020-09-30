*VarTra-Core-override
evaluatorClass
	"Answer an evaluator class appropriate for evaluating expressions in the 
	context of this class."
	^ self environment
			at: #VarTra
			ifPresent: [:vt | vt compilerClassFor: self]
			ifAbsent: [Compiler]