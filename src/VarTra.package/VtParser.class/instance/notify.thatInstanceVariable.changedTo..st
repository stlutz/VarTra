as yet unclassified
notify: subscriptionsNode thatInstanceVariable: varNode changedTo: valueNode

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: #notify:instVar:ofObject:changedFrom:to:inContext:
		arguments: {
			encoder encodeLiteral: (subscriptionsNode key).
			encoder encodeLiteral: (varNode name).
			encoder encodeVariable: 'self'.
			varNode.
			valueNode.
			encoder encodeVariable: 'thisContext'}
		precedence: 3
		from: encoder