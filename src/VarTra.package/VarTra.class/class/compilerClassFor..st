private
compilerClassFor: aClass

	self compileMethodsWithVariableTracking ifFalse: [^ Compiler].
	^ (self classesNotToTrack includes: aClass)
		ifTrue: [Compiler]
		ifFalse: [VtCompiler]