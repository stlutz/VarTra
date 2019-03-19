accessing
block: aBlock

	block ifNil: [
		trackedVariable := self tempVarNamed: 'tempVar' ofContext: aBlock outerContext.
		VarTra
			subscribe: self
			toTempVarNamed: (trackedVariable at: #name)
			ofContext: (trackedVariable at: #context).
		block := aBlock]