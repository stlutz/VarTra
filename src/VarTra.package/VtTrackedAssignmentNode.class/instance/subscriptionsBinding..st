node generation
subscriptionsBinding: encoder

	self variable isTempVariableNode ifTrue: [
		^ self notYetImplemented].
	self variable isInstanceVariableNode ifTrue: [
		^ (encoder classEncoding
			classThatDefinesInstanceVariable: self variable name) ifNotNil: [:cls |
				VarTra
					subscriptionsBindingForInstVarNamed: self variable name
					ofClass: cls]].
	self variable isLiteralVariableNode ifTrue: [
		^ VarTra subscriptionsBindingForLitVar: self variable key].
	self error: 'Unkown variable type'