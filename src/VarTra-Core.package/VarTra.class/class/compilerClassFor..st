compiling
compilerClassFor: aClass

	self compileMethodsWithVariableTracking ifFalse: [^ Compiler].
	(self classesNotToTrack includes: aClass theNonMetaClass) ifTrue: [^ Compiler].
	(aClass inheritsFrom: Object) ifFalse: [^ Compiler].
	^ VtCompiler