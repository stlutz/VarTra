tracking
trackVariable

	VarTra
		subscribe: self
		toInstVarNamed: (trackedVariable at: #name)
		ofObject: (trackedVariable at: #source)