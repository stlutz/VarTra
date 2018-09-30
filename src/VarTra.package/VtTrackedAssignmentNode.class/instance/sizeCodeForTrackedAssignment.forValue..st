code generation
sizeCodeForTrackedAssignment: encoder forValue: forValue

	^ trackedSize ifNil: [trackedSize := 
		(variable sizeCodeForValue: encoder)
		+ ((self varTraRegister: encoder) sizeCodeForStorePop: encoder)
		+ (forValue
			ifTrue: [	variable sizeCodeForStore: encoder]
			ifFalse: [variable sizeCodeForStorePop: encoder])
		+ ((self notificationNode: encoder) sizeCodeForEffect: encoder)
		+ (self
			sizeCode: encoder
			forJump: (self
						sizeCodeForUntrackedAssignment: encoder
						forValue: forValue))]