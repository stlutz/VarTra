node generation
changeNotificationArguments: encoder

	^ {encoder encodeLiteral: (self subscriptionsNode: encoder) key}
			,
			{encoder encodeLiteral: (
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