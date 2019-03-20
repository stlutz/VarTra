publisher
newPublisher

	| pub litVar |
	pub := VtMockClassVarPublisher new.
	litVar := pub class bindingOf: #ClassVar.
	trackedVariable := self litVar: litVar.
	self trackVariable.
	^ pub