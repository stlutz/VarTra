code generation
sizeCode: encoder forValue: forValue

	| thenSize elseSize |
	thenSize := self sizeCodeForTrackedAssignment: encoder forValue: forValue.
	elseSize := self sizeCodeForUntrackedAssignment: encoder forValue: forValue.
	^ (variable sizeCodeForLoad: encoder forValue: forValue)
		+ (value sizeCodeForValue: encoder)
		+ ((self subscriptionsNode: encoder) sizeCodeForValue: encoder)
		+ (encoder sizePushSpecialLiteral: nil)
		+ ((encoder encodeSelector: #==) sizeCode: encoder args: 1 super: false)
		+ (self sizeCode: encoder forBranchOn: true dist: thenSize)
		+ thenSize
		+ elseSize