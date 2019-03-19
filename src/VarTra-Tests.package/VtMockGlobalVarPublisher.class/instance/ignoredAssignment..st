assigning
ignoredAssignment: aValue

	4 = 4
		ifFalse: [VtMockGlobal := aValue]
		ifTrue: [4 + 4]