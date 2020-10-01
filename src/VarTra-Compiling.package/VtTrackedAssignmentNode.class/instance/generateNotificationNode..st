node generation
generateNotificationNode: encoder

	^ MessageNode new
		receiver: (encoder encodeVariable: 'self')
		selector: self changeNotificationSelector
		arguments: (self changeNotificationArguments: encoder)
		precedence: 3
		from: encoder
		sourceRange: ((encoder sourceRangeFor: self)
						ifNotNil: [:interval | interval first to: interval first + 1])