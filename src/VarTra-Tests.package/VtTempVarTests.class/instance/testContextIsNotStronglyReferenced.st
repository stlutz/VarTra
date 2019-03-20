tests
testContextIsNotStronglyReferenced

	| inboundBeforeTracking newInbound |
	self simpleAssignment: 42.
	
	self untrackVariable.
	inboundBeforeTracking := (self trackedVariable at: #context) inboundPointers.
	self trackVariable.
	
	newInbound := (self trackedVariable at: #context) inboundPointersExcluding: inboundBeforeTracking.
	self assert: (newInbound allSatisfy: [:object | object isKindOf: WeakArray])