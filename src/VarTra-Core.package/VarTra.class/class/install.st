initialize-release
install

	self reset.
	CompiledCode installPrimaryBytecodeSet: VtEncoder.
	self compileMethodsWithVariableTracking: true.
	self recompileEverything