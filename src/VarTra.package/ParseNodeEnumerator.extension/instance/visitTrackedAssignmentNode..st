*VarTra
visitTrackedAssignmentNode: anAssignmentNode
	(theSelectBlock isNil or: [theSelectBlock value: anAssignmentNode]) ifFalse:
		[^nil].
	theBlock value: anAssignmentNode.
	^super visitTrackedAssignmentNode: anAssignmentNode