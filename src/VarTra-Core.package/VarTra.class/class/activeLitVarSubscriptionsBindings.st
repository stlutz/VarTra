utility
activeLitVarSubscriptionsBindings

	^ self litVarSubscriptionsBindings select: [:binding |
		binding value notNil and: [binding value notEmpty]]