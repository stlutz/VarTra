tests
assign: aValue then: bValue then: cValue

	self block: self publisher blockWithConsecutiveAssignments.
	self block value: aValue value: bValue value: cValue