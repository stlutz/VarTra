compiling
globalCompilerClass

	^ self compileMethodsWithVariableTracking
		ifTrue: [VtCompiler]
		ifFalse: [Compiler]