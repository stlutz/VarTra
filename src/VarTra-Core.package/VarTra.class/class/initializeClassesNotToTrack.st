initialization
initializeClassesNotToTrack

	ClassesNotToTrack := IdentitySet withAll: {
		Object.
		Behavior.
		Class.
		ClassDescription.
		Metaclass.
	
		self.
		VtDecompiler.
		VtCompiler.		
		
		Context.
		
		ContextPart.
		BlockContext.
		MethodContext.
		
		Decompiler.
		Process
	}