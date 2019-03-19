accessing
varTraRegister

	^ varTraRegister ifNil: [
		| name |
		name := VarTra registerName.
		varTraRegister := self global: name -> nil name: name]