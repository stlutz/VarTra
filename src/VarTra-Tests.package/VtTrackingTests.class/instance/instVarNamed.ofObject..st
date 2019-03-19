variables
instVarNamed: varName ofObject: source

	^ Dictionary new
		at: #type put: #instVar;
		at: #name put: varName asSymbol;
		at: #source put: source;
		yourself