tests - recompilation
testSimpleAssignment

	self simpleAssignment: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	self simpleAssignment: 7.
	self assertNotificationCount: 2.
	self assertVariableChangedFrom: 42 to: 7