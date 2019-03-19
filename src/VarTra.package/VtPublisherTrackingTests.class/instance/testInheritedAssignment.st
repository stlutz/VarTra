tests
testInheritedAssignment

	self inheritedAssignment: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	self inheritedAssignment: 7.
	self assertNotificationCount: 2.
	self assertVariableChangedFrom: 42 to: 7