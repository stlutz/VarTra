accessing
testTemp

	| counter |
	counter := nil.
	VarTra subscribe: self toTempVarNamed: 'counter' ofContext: thisContext.
	counter := 1