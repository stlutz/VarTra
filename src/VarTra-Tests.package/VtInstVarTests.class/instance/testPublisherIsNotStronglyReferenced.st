tests
testPublisherIsNotStronglyReferenced

	| inboundBeforeTracking newInbound |
	self publisher; untrackVariable.
	inboundBeforeTracking := self publisher inboundPointers.
	self trackVariable.
	
	newInbound := self publisher inboundPointersExcluding: inboundBeforeTracking.
	self assert: (newInbound allSatisfy: [:object | object isKindOf: WeakArray])