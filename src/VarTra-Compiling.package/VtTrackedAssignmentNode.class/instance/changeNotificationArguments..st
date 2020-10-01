node generation
changeNotificationArguments: encoder

	^ {
		encoder encodeVtLiteral: (self subscriptionsNode: encoder) key.
		encoder encodeVtLiteral: (
			variable isLiteralVariableNode
				ifTrue: [variable key]
				ifFalse: [variable name]).
		encoder varTraRegister.
		variable.
		encoder encodeVariable: 'thisContext'
	}