tracking
trackVariable

	VarTra
		subscribe: self
		toInstVarNamed: (self trackedVariable at: #name)
		ofObject: (self trackedVariable at: #source)