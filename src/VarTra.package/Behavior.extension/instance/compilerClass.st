*VarTra
compilerClass
	"Answer a compiler class appropriate for source methods of this class."
	^ self environment
		at: #VarTra
		ifPresent: [:vartra | vartra globalCompilerClass]
		ifAbsent: [Compiler]