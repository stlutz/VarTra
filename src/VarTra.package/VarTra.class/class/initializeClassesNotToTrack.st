initialize-release
initializeClassesNotToTrack

	ClassesNotToTrack := Bag withAll: {
		VarTra.
		VtDecompiler.
		VtCompiler.		
		
		Context.
		ContextPart.
		BlockContext.
		MethodContext.
		Decompiler.
		Process
	}