initialize-release
initialize

	self initializeClassesNotToTrack.
	(UIManager default confirm: 'Install VarTra?') ifTrue: [
		self install]