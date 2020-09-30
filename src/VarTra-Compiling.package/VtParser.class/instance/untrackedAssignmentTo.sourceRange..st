expression types
untrackedAssignmentTo: varNode sourceRange: interval

	^ AssignmentNode new
		variable: varNode
		value: parseNode
		from: encoder
		sourceRange: interval