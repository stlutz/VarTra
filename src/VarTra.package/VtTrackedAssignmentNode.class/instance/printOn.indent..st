printing
printOn: aStream indent: level

	self variable printOn: aStream indent: level.
	aStream nextPutAll: ' := '.
	self value printOn: aStream indent: level + 2