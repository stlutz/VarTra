node generation
changeNotificationSelector

	self variable isTempVariableNode ifTrue: [
		^ #notify:tempVarNamed:changedFrom:to:inContext:].
	self variable isInstanceVariableNode ifTrue: [
		^ #notify:instVarNamed:ofObject:changedFrom:to:inContext:].
	self variable isLiteralVariableNode ifTrue: [
		^ #notify:litVar:changedFrom:to:inContext:].
	self error: 'Unknown Variable Type'