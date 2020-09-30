compiling
compilerClass
	"Don't let VarTra track itself. Avoids accidental recursive calls during subscriber notification."
	^ Compiler