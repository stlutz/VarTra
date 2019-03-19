asserting
assert: notification variable: variable changedFrom: oldValue to: newValue

	self assertVariable: variable equals: (notification at: #variable).
	self assert: oldValue equals: (notification at: #oldValue).
	self assert: newValue equals: (notification at: #newValue)