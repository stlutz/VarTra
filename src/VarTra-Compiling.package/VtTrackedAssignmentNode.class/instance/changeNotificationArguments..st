node generation
changeNotificationArguments: encoder

	^ {encoder encodeVtLiteral: (self subscriptionsNode: encoder) key}
			,
			{encoder encodeVtLiteral: (
				variable isLiteralVariableNode
					ifTrue: [variable key]
					ifFalse: [variable name])}
			,
			(variable isInstanceVariableNode
				ifTrue: [{encoder encodeVariable: 'self'}]
				ifFalse: [#()])
			,
			{encoder varTraRegister.
			variable.
			encoder encodeVariable: 'thisContext'}