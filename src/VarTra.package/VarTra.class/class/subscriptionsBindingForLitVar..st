as yet unclassified
subscriptionsBindingForLitVar: litVarBinding

	^ self litVarSubscriptionsBindings
		at: litVarBinding
		ifAbsentPut: [
			(litVarBinding key , '(Subscriptions)') asSymbol -> nil]