initialization
initializeClassesNotToTrack
	"Classes deemed too dangerous to track due to potential to crash horribly or recurse endlessly.
	For a class to be in this list does NOT mean it necessarily makes any problems."
	ClassesNotToTrack := IdentitySet new
		addAll: {
			self.
			Object.
			Process.
			CompilationCue.
			Behavior.
			Class.
			ClassDescription.
			Metaclass };
		addAll: Compiler withAllSubclasses;
		addAll: Decompiler withAllSubclasses;
		addAll: Scanner withAllSubclasses;
		addAll: CompiledCode withAllSubclasses;
		addAll: Context withAllSubclasses;
		yourself