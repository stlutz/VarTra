code generation
sizeCodeForTrackedAssignment: encoder forValue: forValue

	^ trackedSize ifNil: [trackedSize := 
		((AssignmentNode new
				variable: (self varTraRegister: encoder)
				value: variable) sizeCodeForEffect: encoder)
		+ (forValue
			ifTrue: [	variable sizeCodeForStore: encoder]
			ifFalse: [variable sizeCodeForStorePop: encoder])
		+ ((self notificationNode: encoder) sizeCodeForEffect: encoder)
		+ ((AssignmentNode new
				variable: (self varTraRegister: encoder)
				value: NodeNil) sizeCodeForEffect: encoder)
		+ (self
			sizeCode: encoder
			forJump: (self
						sizeCodeForUntrackedAssignment: encoder
						forValue: forValue))]