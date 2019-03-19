tests - notifications
testUnsubscribingStopsNotifications

	self simpleAssignment: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	self untrackVariable.
	self simpleAssignment: 7.
	self assertNotificationCount: 1.