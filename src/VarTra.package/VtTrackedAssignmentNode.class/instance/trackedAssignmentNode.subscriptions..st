node generation
trackedAssignmentNode: encoder subscriptions: subscriptionsNode

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: self changeNotificationSelector
		arguments:
			{encoder encodeLiteral: subscriptionsNode key}
			,
			{encoder encodeLiteral: (
				self variable isLiteralVariableNode
					ifTrue: [self variable key]
					ifFalse: [self variable name])}
			,
			(self variable isInstanceVariableNode
				ifTrue: [{encoder encodeVariable: 'self'}]
				ifFalse: [#()])
			,
			{self variable.
			self assignmentNode: encoder.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder