*VarTra-Compiling
encodeVtLiteral: anObject
	"Reimplementation of 5.2+ behavior of Encoder>>encodeLiteral: for backwards compatibility"
	^ self
		name: anObject
		key: anObject
		class: LiteralNode
		type: LdLitType
		set: litSet