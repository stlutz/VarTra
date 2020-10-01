class initialization
initialize

	Environment current
		at: #VtMockGlobal put: nil;
		at: #VtOtherMockGlobal put: nil.
	self compileAll