*VarTra
nodesDetect: aBlock ifNone: exceptionBlock

	self nodesDo: [:node |
		(aBlock value: node) ifTrue: [^ node]].
	^ exceptionBlock value