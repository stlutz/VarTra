tests
testSubscriberIsNotStronglyReferenced

	| inboundBeforeTracking newInbound |
	inboundBeforeTracking := self inboundPointers.
	
	self simpleAssignment: 42.
	self assertNotificationCount: 1.
	self assertVariableChangedFrom: nil to: 42.
	
	newInbound := self inboundPointersExcluding: inboundBeforeTracking.
	
	self assert: (newInbound allSatisfy: [:object | object isKindOf: WeakArray])