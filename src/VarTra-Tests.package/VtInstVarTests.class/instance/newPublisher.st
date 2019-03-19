publisher
newPublisher

	| pub |
	pub := VtMockInstVarPublisher new.
	trackedVariable := self instVarNamed: 'instVar' ofObject: pub.
	self trackVariable.
	^ pub