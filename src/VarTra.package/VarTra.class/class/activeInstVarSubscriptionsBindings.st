utility
activeInstVarSubscriptionsBindings

	^ self instVarSubscriptionsBindings gather: [:instVar |
		instVar value select: [:binding |
			binding value notNil and: [binding value notEmpty]]]