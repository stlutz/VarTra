tests
testShadowedAssignment

	self shadowedAssignment: 42.
	self assertNotificationCount: 0.
	
	self shadowedAssignment: 7.
	self assertNotificationCount: 0