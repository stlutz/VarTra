private
setActualNode: aNode

	| actualAssignment |
	actualNode := aNode.
	actualAssignment := aNode
							nodesDetect: [:arg | arg isAssignmentNode]
							ifNone: [self error: 'Expected an AssignmentNode'].
	variable := actualAssignment variable.
	value := actualAssignment value