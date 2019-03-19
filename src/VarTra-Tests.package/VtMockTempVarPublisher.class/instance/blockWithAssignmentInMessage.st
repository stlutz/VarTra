assigning
blockWithAssignmentInMessage

	| tempVar |
	^ [:aValue |
		Array with: 1 with: (tempVar := aValue) with: 3 with: 4]