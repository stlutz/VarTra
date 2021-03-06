initialization
recompileEverything

	| classes failedMethods |
	failedMethods := OrderedCollection new.
	classes := Smalltalk allClasses gather: [:class | {class . class class}].
	classes := classes sorted: [:a :b | a name <= b name].
	'Compiling' displayProgressFrom: 1 to: classes size during: [:classBar |
		classes withIndexDo: [:class :classIndex |
			| methods |
			methods := class methodDict values.
			class name displayProgressFrom: 1 to: methods size during: [:methodBar |
				methods withIndexDo: [:method :methodIndex |
					[class recompile: method selector from: class]
						on: Error , Halt
						do: [:error | failedMethods add: method methodReference].
					methodBar value: methodIndex]].
			classBar value: classIndex]].
	Transcript cr; cr; nextPutAll: 'Failed to install variable tracking into:'; cr.
	failedMethods do: [:methodReference |
		Transcript tab.
		methodReference printOn: Transcript.
		Transcript cr].
	Transcript flush