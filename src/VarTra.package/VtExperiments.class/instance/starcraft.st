accessing
starcraft

	^ Starcraft := Starcraft isNumber
		ifTrue: [Starcraft + 1]
		ifFalse: [0]