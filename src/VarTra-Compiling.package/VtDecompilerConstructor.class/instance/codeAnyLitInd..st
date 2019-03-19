constructor
codeAnyLitInd: association

	^ LiteralVariableNode new
		name: association key
		key: association
		index: nil
		type: LdLitIndType