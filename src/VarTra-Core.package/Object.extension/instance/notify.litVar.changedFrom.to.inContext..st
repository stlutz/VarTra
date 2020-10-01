*VarTra-Core-notifications
notify: subscriptionsBinding litVar: litVarBinding changedFrom: oldValue to: newValue inContext: aContext

	oldValue == newValue ifFalse: [
		| hasSubscribers |
		hasSubscribers := false.
		subscriptionsBinding value do: [:subscriber |
			hasSubscribers := true.
			subscriber
				litVar: litVarBinding
				changedFrom: oldValue
				to: newValue
				inContext: aContext].
		hasSubscribers ifFalse: [subscriptionsBinding value: nil]].
	^ newValue