initialization
initializeClassesNotToTrack

	ClassesNotToTrack := Set withAll: {
		Object.
		Behavior.
		Class.
		ClassDescription.
		Metaclass.
	
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