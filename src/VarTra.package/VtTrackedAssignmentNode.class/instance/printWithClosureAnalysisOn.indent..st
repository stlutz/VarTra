printing
printWithClosureAnalysisOn: aStream indent: level

	self variable printWithClosureAnalysisOn: aStream indent: level.
	aStream nextPutAll: ' := '.
	self value printWithClosureAnalysisOn: aStream indent: level + 2