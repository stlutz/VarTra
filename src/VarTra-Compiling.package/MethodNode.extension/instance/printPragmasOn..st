*VarTra-Compiling
printPragmasOn: aStream
	properties ifNil: [^self].
	properties pragmas do:
		[:pragma|
		"Primitives are printed in printPrimitiveOn:; skip these"
		(self parserClass primitivePragmaSelectors includes: pragma keyword) ifFalse:
			[aStream crtab: 1; nextPut: $<; print: pragma message; nextPut: $>]]