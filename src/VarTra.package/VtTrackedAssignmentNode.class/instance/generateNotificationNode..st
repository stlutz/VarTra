node generation
generateNotificationNode: encoder

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: self changeNotificationSelector
		arguments:
			{encoder encodeLiteral: (self subscriptionsNode: encoder) key}
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
			{encoder varTraRegister.
			self variable.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder
		sourceRange: ((encoder sourceRangeFor: self)
						ifNotNil: [:interval | interval start to: interval start + 1])