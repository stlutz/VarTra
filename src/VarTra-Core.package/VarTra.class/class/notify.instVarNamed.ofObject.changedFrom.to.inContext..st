notifications
notify: subscriptionsBinding instVarNamed: varName ofObject: source changedFrom: oldValue to: newValue inContext: aContext

	oldValue == newValue ifFalse: [
		subscriptionsBinding value
			at: source
			ifPresent: [:subscriptions |
				| hasSubscribers |
				hasSubscribers := false.
				subscriptions do: [:subscriber |
					hasSubscribers := true.
					subscriber
						instVarNamed: varName
						ofObject: source
						changedFrom: oldValue
						to: newValue
						inContext: aContext].
				hasSubscribers ifFalse: [
					subscriptionsBinding value removeKey: source]]
			ifAbsent: ["this might not be a good idea for instance variables"
				subscriptionsBinding value slowSize = 0 ifTrue: [
					subscriptionsBinding value: nil]]].
	^ newValue