tests - recompilation
testIgnoredAssignment

	self ignoredAssignment: 42.
	self assertNotificationCount: 0.
	
	self ignoredAssignment: 7.
	self assertNotificationCount: 0