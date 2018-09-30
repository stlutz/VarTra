code generation
emitCode: stack forValue: forValue encoder: encoder

	| thenSize elseSize |
	thenSize := self sizeCodeForTrackedAssignment: encoder forValue: forValue.
	elseSize := self sizeCodeForUntrackedAssignment: encoder forValue: forValue.
	variable emitCodeForLoad: stack forValue: forValue encoder: encoder.
	"evaluate expression"
	value emitCodeForValue: stack encoder: encoder.
	pc := encoder nextPC. "mabye? dunno"
	"guard"
	(self subscriptionsNode: encoder) emitCodeForValue: stack encoder: encoder.
	encoder genPushSpecialLiteral: nil. stack push: 1.
	(encoder encodeSelector: #==) emitCode: stack args: 1 encoder: encoder.
	self emitCodeForBranchOn: true dist: thenSize pop: stack encoder: encoder.
	"tracked assignment"
	variable emitCodeForValue: stack encoder: encoder.
	(encoder varTraRegister) emitCodeForStorePop: stack encoder: encoder.
	forValue
		ifTrue: [	variable emitCodeForStore: stack encoder: encoder]
		ifFalse: [variable emitCodeForStorePop: stack encoder: encoder].
	(self notificationNode: encoder) emitCodeForEffect: stack encoder: encoder.
	self emitCodeForJump: elseSize encoder: encoder.
	"untracked assignment"
	stack push: 1. "theres is a pop in both branches of the conditional
	if this part of the code is really executed, there should be exactly one item on the stack"
	forValue
		ifTrue: [variable emitCodeForStore: stack encoder: encoder]
		ifFalse: [variable emitCodeForStorePop: stack encoder: encoder].