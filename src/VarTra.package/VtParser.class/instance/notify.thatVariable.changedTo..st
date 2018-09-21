as yet unclassified
notify: subscriptionsNode thatVariable: varNode changedTo: valueNode

	varNode isTempVariableNode ifTrue: [
		^ self 
			notify: subscriptionsNode
			thatTempVariable: varNode
			changedTo: valueNode].
	varNode isInstanceVariableNode ifTrue: [
		^ self
			notify: subscriptionsNode
			thatInstanceVariable: varNode
			changedTo: valueNode].
	varNode isLiteralVariableNode ifTrue: [
		^ self
			notify: subscriptionsNode
			thatLiteralVariable: varNode
			changedTo: valueNode].
	self error: 'Unknown variable type'