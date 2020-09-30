initialization
uninstall

	self reset.
	self compileMethodsWithVariableTracking: false.
	self recompileEverything