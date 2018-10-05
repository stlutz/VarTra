| classes |
parseErrors := OrderedCollection new.
compileErrors := OrderedCollection new.
decompileErrors := OrderedCollection new.
recompileErrors := OrderedCollection new.
unequalMethods := OrderedCollection new.
counter := 0.
classes := Smalltalk allClasses gather: [:class | {class . class class}].
classes := classes sorted: [:a :b | a name <= b name].
'Compiling' displayProgressFrom: 1 to: classes size during: [:classBar |
	classes withIndexDo: [:class :classIndex |
		| methods |
		methods := class methodDict values.
		class name displayProgressFrom: 1 to: methods size during: [:methodBar |
			methods withIndexDo: [:method :methodIndex |
				| vtAST vtMethod decompiledAST recompiledMethod |
				counter := counter + 1.
				[vtAST := VtParser new parse: method getSource class: class]
					on: Error, Halt
					do: [:exc | parseErrors add: exc"method methodReference"].
				[vtMethod := vtAST generate]
					on: Error, Halt
					do: [:exc | compileErrors add: method methodReference].
				[decompiledAST := VtDecompiler new
										decompile: vtMethod selector
										in: vtMethod methodClass
										method: vtMethod]
					on: Error, Halt
					do: [:exc | decompileErrors add: method methodReference].
				[recompiledMethod := decompiledAST generate]
					on: Error, Halt
					do: [:exc | recompileErrors add: method methodReference].
				recompiledMethod ~= vtMethod ifTrue: [
					unequalMethods add: method methodReference].
				methodBar value: methodIndex]].
		classBar value: classIndex]].

