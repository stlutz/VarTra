printing
printWithClosureAnalysisOn: aStream indent: level

	self variable
		ifNil: [aStream nextPutAll: '{???}']
		ifNotNil: [:node | node printWithClosureAnalysisOn: aStream indent: level].
	aStream nextPutAll: ' := '.
	self value
		ifNil: [aStream nextPutAll: '{???}']
		ifNotNil: [:node | node printWithClosureAnalysisOn: aStream indent: level + 2]