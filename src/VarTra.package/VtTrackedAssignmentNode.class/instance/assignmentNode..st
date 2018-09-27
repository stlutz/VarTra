node generation
assignmentNode: encoder

	^ AssignmentNode new
		variable: self variable
		value: self value
		from: encoder
		sourceRange: self sourceRange