tests
testReturnedAssignment

	self assert: 42 equals: (self returnedAssignment: 42).
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	self assert: 7 equals: (self returnedAssignment: 7).
	self assertNotificationCount: 2.
	self assertVariableChangedFrom: 42 to: 7