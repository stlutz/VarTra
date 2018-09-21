as yet unclassified
subscriptionsBindingFor: varNode

	varNode isTempVariableNode ifTrue: [
		^ self notYetImplemented].
	varNode isInstanceVariableNode ifTrue: [
		^ (cue getClass classThatDefinesInstanceVariable: varNode name) ifNotNil: [:cls |
			VarTra
				subscriptionsBindingForInstVarNamed: varNode name
				ofClass: cls]].
	varNode isLiteralVariableNode ifTrue: [
		^ VarTra subscriptionsBindingForLitVar: varNode key].
	self error: 'Unkown variable type'