assigning
blockWithIgnoredAssignment

	| tempVar |
	^ [:aValue |
		4 = 4
			ifFalse: [tempVar := aValue]
			ifTrue: [4 + 4]]