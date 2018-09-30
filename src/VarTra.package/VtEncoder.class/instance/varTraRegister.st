accessing
varTraRegister

	^ scopeTable
		at: VarTra registerName
		ifAbsentPut: [
			self newTemp: VarTra registerName] 