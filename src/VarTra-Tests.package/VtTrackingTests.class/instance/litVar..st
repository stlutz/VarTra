variables
litVar: litVarBinding

	^ Dictionary new
		at: #type put: #litVar;
		at: #binding put: litVarBinding;
		yourself