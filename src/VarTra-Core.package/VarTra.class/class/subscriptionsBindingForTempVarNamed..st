subscriptions management
subscriptionsBindingForTempVarNamed: tempVarName
	"During compilation / parsing there is no compiled method yet with which to associate the binding. Hence, we simply create a new binding which leaves the burden of keeping the binding unique (within a single method) to the encoder."
	^ (SubscriptionsBindingKeyPrefix , 'Temp:' , tempVarName) -> nil