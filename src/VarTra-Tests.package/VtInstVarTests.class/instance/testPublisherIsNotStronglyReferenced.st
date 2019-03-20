tests
testPublisherIsNotStronglyReferenced

	| inboundBeforeTracking newInbound |
	self simpleAssignment: 42.
	
	self untrackVariable.
	inboundBeforeTracking := (self trackedVariable at: #source) inboundPointers.
	self trackVariable.
	
	newInbound := self publisher inboundPointersExcluding: inboundBeforeTracking.
	self assert: (newInbound allSatisfy: [:object | object isKindOf: WeakArray])