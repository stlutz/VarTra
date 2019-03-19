asserting
assertVariableChangedFrom: oldValue to: newValue

	self
		assert: self notifications last
		variable: self trackedVariable
		changedFrom: oldValue
		to: newValue