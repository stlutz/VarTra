publisher
newPublisher

	| pub litVar |
	pub := VtMockGlobalVarPublisher new.
	litVar := pub class bindingOf: #VtMockGlobal.
	trackedVariable := self litVar: litVar.
	VarTra subscribe: self toLitVar: litVar.
	^ pub