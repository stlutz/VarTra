initialize-release
install

	CompiledCode installPrimaryBytecodeSet: VtEncoder.
	self compileMethodsWithVariableTracking: true.
	self recompileEverything