tests - recompilation
testAssignmentInBlock

	| blockWithAssignment |
	blockWithAssignment := self blockWithAssignment.
	self assertNotificationCount: 0.
	
	blockWithAssignment value: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	blockWithAssignment value: 7.
	self assertNotificationCount: 2.
	self assertVariableChangedFrom: 42 to: 7