as yet unclassified
changeNotificationSelector

	self variable isTempVariableNode ifTrue: [
		^ #notify:tempVar:changedFrom:to:inContext:].
	self variable isInstanceVariableNode ifTrue: [
		^ #notify:instVar:ofObject:changedFrom:to:inContext:].
	self variable isLiteralVariableNode ifTrue: [
		^ #notify:litVar:changedFrom:to:inContext:].
	self error: 'Unknown Variable Type'