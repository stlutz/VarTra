tests - recompilation
testConsecutiveAssignments

	self assign: 42 then: 7 then: 21.
	self assertNotificationCount: 3.
	self
		assert: self notifications first
		variable: self trackedVariable
		changedFrom: nil to: 42.
	self
		assert: self notifications second
		variable: self trackedVariable
		changedFrom: 42 to: 7.
	self
		assert: self notifications third
		variable: self trackedVariable
		changedFrom: 7 to: 21