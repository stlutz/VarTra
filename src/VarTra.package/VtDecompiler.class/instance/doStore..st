instruction decoding
doStore: stackOrBlock

	super doStore: stackOrBlock.
	trackedAssignment ifNotNil: [
		| assignment |
		assignment := stackOrBlock removeLast.
		(assignment variable isLiteralVariableNode
			and: [assignment variable key key = VarTra registerName])
				ifTrue: [
					assignment value isNilNode ifFalse: [
						trackedAssignment
							setVarTraRegister: assignment variable;
							setVariable: assignment value]]
				ifFalse: [
					isFirstStore
						ifTrue: [
							trackedAssignment setValue: assignment value.
							isFirstStore := false.
							stack addLast: assignment value]
						ifFalse: [
							stackOrBlock addLast: trackedAssignment.
							trackedAssignment := nil]]]