*VarTra-Compiling
headerFlagForEncoder: anEncoder
	"This allows subclasses for compiler variants such as the ScriptEncoder in EToys
	 to continue to function."
	(PrimaryBytecodeSetEncoderClass == VtEncoder "Very, very hacky. Prevents ScriptEncoder from switching to the secondary encoder class, as that seems to crash my system. This whole way of remembering which encoder encoded a class is rather unsuitable for VarTra's use case anyway."
		and: [anEncoder isKindOf: VtEncoder superclass]) ifTrue:
		[^0].
	(anEncoder isKindOf: PrimaryBytecodeSetEncoderClass) ifTrue:
		[^0].
	(anEncoder isKindOf: SecondaryBytecodeSetEncoderClass) ifTrue:
		[^SmallInteger minVal].
	self error: 'The encoder is not one of the two installed bytecode sets'