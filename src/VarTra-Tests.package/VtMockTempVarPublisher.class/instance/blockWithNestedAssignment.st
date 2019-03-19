assigning
blockWithNestedAssignment

	| tempVar otherTempVar |
	^ [:aValue |
		otherTempVar := tempVar := aValue]