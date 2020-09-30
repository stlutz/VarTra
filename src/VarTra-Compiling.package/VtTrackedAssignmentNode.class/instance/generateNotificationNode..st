node generation
generateNotificationNode: encoder

	^ MessageNode new
		receiver: (encoder encodeVariable: 'VarTra')
		selector: self changeNotificationSelector
		arguments: (self changeNotificationArguments: encoder)
		precedence: 3
		from: encoder
		sourceRange: ((encoder sourceRangeFor: self)
						ifNotNil: [:interval | interval start to: interval start + 1])