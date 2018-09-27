as yet unclassified
notify: subscriptionsNode thatInstanceVariable: varNode changedTo: valueNode

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: self changeNotificationSelector
		arguments: {
			encoder encodeLiteral: subscriptionsNode key.
			encoder encodeLiteral: varNode name.
			encoder encodeVariable: 'self'.
			varNode.
			valueNode.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder