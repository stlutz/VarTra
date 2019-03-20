tracking
trackVariable

	VarTra
		subscribe: self
		toTempVarNamed: (self trackedVariable at: #name)
		ofContext: (self trackedVariable at: #context)