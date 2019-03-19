tracking
untrackVariable

	VarTra
		unsubscribe: self
		fromInstVarNamed: (trackedVariable at: #name)
		ofObject: (trackedVariable at: #source)