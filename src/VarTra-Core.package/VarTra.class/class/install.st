initialization
install

	self reset.
	self compileMethodsWithVariableTracking: true.
	self recompileEverything