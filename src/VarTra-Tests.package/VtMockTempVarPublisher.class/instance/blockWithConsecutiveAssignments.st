assigning
blockWithConsecutiveAssignments

	| tempVar |
	^ [:firstValue :secondValue :thirdValue |
		tempVar := firstValue.
		tempVar := secondValue.
		tempVar := thirdValue]