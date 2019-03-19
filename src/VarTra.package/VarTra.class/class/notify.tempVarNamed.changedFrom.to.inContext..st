triggers
notify: subscriptionsBinding tempVarNamed: varName changedFrom: oldValue to: newValue inContext: aContext 

	oldValue == newValue ifFalse: [
		| ctxt |
		ctxt := aContext.
		[
			subscriptionsBinding value
				at: ctxt
				ifPresent: [:subscriptions |
					| hasSubscribers |
					hasSubscribers := false.
					subscriptions do: [:subscriber |
						hasSubscribers := true.
						subscriber
							tempVarNamed: varName
							changedFrom: oldValue
							to: newValue
							inContext: ctxt].
					hasSubscribers ifFalse: [
						subscriptionsBinding value removeKey: ctxt]]
				ifAbsent: [
					subscriptionsBinding value slowSize = 0 ifTrue: [
						subscriptionsBinding value: nil]]
		] doWhileTrue: [
			(ctxt := ctxt outerContext) notNil]].
	^ newValue