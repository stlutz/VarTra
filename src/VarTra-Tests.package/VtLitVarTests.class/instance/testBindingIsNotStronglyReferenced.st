tests
testBindingIsNotStronglyReferenced

	| inboundBeforeTracking newInbound |
	self simpleAssignment: 42.
	
	self untrackVariable.
	inboundBeforeTracking := (self trackedVariable at: #binding) inboundPointers.
	self trackVariable.
	
	newInbound := (self trackedVariable at: #binding) inboundPointersExcluding: inboundBeforeTracking.
	self assert: (newInbound allSatisfy: [:object | object isKindOf: WeakArray])