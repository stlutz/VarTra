constructor
codeMessage: receiver selector: selector arguments: arguments
	| symbol |
	symbol := selector key.
	(self
		decodeLiteralVariableValueDereferenceWithReceiver: receiver
		selector: symbol
		arguments: arguments) ifNotNil: [:node| ^node].
	(self decodeIfNilWithReceiver: receiver
			selector: symbol
			arguments: arguments) ifNotNil: [:node |
				| originalReceiver |
				originalReceiver := receiver receiver.
				^ (originalReceiver isLiteralVariableNode and: [originalReceiver key isSubscriptionsBinding])
					ifTrue: [	VtTrackedAssignmentNode new setActualNode: node]
					ifFalse: [node]].
	^MessageNode new
			receiver: receiver
			selector: selector
			arguments: arguments
			precedence: symbol precedence