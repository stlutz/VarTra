code generation
emitCode: stack forValue: forValue encoder: encoder

	| thenSize elseSize |
	thenSize := self sizeCodeForTrackedAssignment: encoder forValue: forValue.
	elseSize := self sizeCodeForUntrackedAssignment: encoder forValue: forValue.
	variable emitCodeForLoad: stack forValue: forValue encoder: encoder.
	"evaluate expression"
	value emitCodeForValue: stack encoder: encoder.
	pc := encoder nextPC. "maybe? dunno"
	"guard"
	(self subscriptionsNode: encoder) emitCodeForValue: stack encoder: encoder.
	NodeNil emitCodeForValue: stack encoder: encoder.
	(encoder encodeSelector: #==) emitCode: stack args: 1 encoder: encoder.
	self emitCodeForBranchOn: true dist: thenSize pop: stack encoder: encoder.
	"tracked assignment"
	(AssignmentNode new
		variable: (self varTraRegister: encoder)
		value: variable) emitCodeForEffect: stack encoder: encoder. "save the old value"
	forValue
		ifTrue: [variable emitCodeForStore: stack encoder: encoder]
		ifFalse: [variable emitCodeForStorePop: stack encoder: encoder].
	(self notificationNode: encoder) emitCodeForEffect: stack encoder: encoder.
	(AssignmentNode new
		variable: (self varTraRegister: encoder)
		value: NodeNil) emitCodeForEffect: stack encoder: encoder.
	self emitCodeForJump: elseSize encoder: encoder.
	"untracked assignment"
	forValue
		ifTrue: [variable emitCodeForStore: stack encoder: encoder]
		ifFalse: [
			stack push: 1. "theres a pop in both branches of the conditional
			if this part of the code is executed, there should be exactly one item on the stack"
			variable emitCodeForStorePop: stack encoder: encoder].