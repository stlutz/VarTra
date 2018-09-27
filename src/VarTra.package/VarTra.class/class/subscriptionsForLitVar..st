subscriptions management
subscriptionsForLitVar: binding

	| subscriptionsBinding |
	subscriptionsBinding := self subscriptionsBindingForLitVar: binding.
	subscriptionsBinding value ifNil: [subscriptionsBinding value: WeakSet new].
	^ subscriptionsBinding value