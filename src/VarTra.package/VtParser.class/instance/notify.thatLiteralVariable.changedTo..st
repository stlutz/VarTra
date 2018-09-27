as yet unclassified
notify: subscriptionsNode thatLiteralVariable: varNode changedTo: valueNode

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: #notify:litVar:changedFrom:to:inContext:
		arguments: {
			encoder encodeLiteral: subscriptionsNode key.
			encoder encodeLiteral: varNode key.
			varNode.
			valueNode.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder