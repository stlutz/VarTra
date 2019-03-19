variables
tempVarNamed: varName ofContext: context

	^ Dictionary new
		at: #type put: #instVar;
		at: #name put: varName asSymbol;
		at: #context put: context;
		yourself