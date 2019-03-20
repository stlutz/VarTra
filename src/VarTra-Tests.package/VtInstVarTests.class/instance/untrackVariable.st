tracking
untrackVariable

	VarTra
		unsubscribe: self
		fromInstVarNamed: (self trackedVariable at: #name)
		ofObject: (self trackedVariable at: #source)