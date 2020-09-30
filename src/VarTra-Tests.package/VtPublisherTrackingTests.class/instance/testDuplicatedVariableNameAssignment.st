tests
testDuplicatedVariableNameAssignment

	self duplicatedVariableNameAssignment: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	self duplicatedVariableNameAssignment: 7.
	self assertNotificationCount: 2.
	self assertVariableChangedFrom: 42 to: 7.