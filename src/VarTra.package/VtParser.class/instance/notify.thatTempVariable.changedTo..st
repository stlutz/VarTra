as yet unclassified
notify: subscriptionsNode thatTempVariable: varNode changedTo: valueNode

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: #notify:tempVar:changedFrom:to:inContext:
		arguments: {
			encoder encodeLiteral: subscriptionsNode key.
			encoder encodeLiteral: varNode name.
			varNode.
			valueNode.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder