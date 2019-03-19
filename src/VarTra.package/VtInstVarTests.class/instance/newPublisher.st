publisher
newPublisher

	| pub |
	pub := VtMockInstVarPublisher new.
	trackedVariable := self instVarNamed: 'instVar' ofObject: pub.
	VarTra
		subscribe: self
		toInstVarNamed: (trackedVariable at: #name)
		ofObject: (trackedVariable at: #source).
	^ pub