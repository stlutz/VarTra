code generation
sizeCodeForUntrackedAssignment: encoder forValue: forValue

	^ untrackedSize ifNil: [untrackedSize :=
		forValue
			ifTrue: [	variable sizeCodeForStore: encoder]
			ifFalse: [variable sizeCodeForStorePop: encoder]]