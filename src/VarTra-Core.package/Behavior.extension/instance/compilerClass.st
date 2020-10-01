*VarTra-Core-override
compilerClass
	"Answer a compiler class appropriate for source methods of this class."
	^ Environment current
			at: #VarTra
			ifPresent: [:vt | vt compilerClassFor: self]
			ifAbsent: [Compiler]