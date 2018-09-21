as yet unclassified
notify: subscriptionsBinding tempVarNamed: varName changedFrom: oldValue to: newValue inContext: aContext 

	oldValue == newValue ifFalse: [
		subscriptionsBinding value
			at: aContext
			ifPresent: [:subscriptions |
				| hasSubscribers |
				hasSubscribers := false.
				subscriptions do: [:subscriber |
					hasSubscribers := true.
					subscriber
						tempVarNamed: varName
						changedFrom: oldValue
						to: newValue
						inContext: aContext].
				hasSubscribers ifFalse: [
					subscriptionsBinding value removeKey: aContext]]
			ifAbsent: [
				subscriptionsBinding slowSize = 0 ifTrue: [
					subscriptionsBinding value: nil]]].
	^ newValue