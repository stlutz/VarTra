accessing
block: aBlock

	block ifNil: [
		trackedVariable := self tempVarNamed: 'tempVar' ofContext: aBlock outerContext.
		self trackVariable.
		block := aBlock]