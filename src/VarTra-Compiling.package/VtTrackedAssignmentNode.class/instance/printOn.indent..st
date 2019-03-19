printing
printOn: aStream indent: level

	self variable
		ifNil: [aStream nextPutAll: '{???}']
		ifNotNil: [:node | node printOn: aStream indent: level].
	aStream nextPutAll: ' := '.
	self value
		ifNil: [aStream nextPutAll: '{???}']
		ifNotNil: [:node | node printOn: aStream indent: level + 2]