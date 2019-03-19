*VarTra-Compiling
compilerClass
	"Answer a compiler class appropriate for source methods of this class."
	^ [VarTra compilerClassFor: self]
		on: Error
		do: [Compiler]