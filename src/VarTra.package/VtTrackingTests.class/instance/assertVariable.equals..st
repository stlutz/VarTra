asserting
assertVariable: expected equals: actual

	expected keysAndValuesDo: [:key :value |
		self
			assert: value
			identical: (actual at: key)
			description: 'Did not see the variable that was expected']