instruction decoding
send: selector super: supered numArgs: numberArguments

	super send: selector super: supered numArgs: numberArguments.
	selector == #== ifTrue: [
		| receiver |
		receiver := stack last receiver.
		(receiver isLiteralVariableNode
			and: [receiver key isSubscriptionsBinding]) ifTrue: [
				trackedAssignment := VtTrackedAssignmentNode new.
				isFirstStore := true]].
	trackedAssignment ifNotNil: [
		stack removeLast]