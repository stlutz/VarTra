subscriptions management
subscriptionsForTempVarNamed: tempVarName ofContext: aContext

	| subscriptionsBinding |
	subscriptionsBinding := self
								subscriptionsBindingForTempVarNamed: tempVarName
								ofMethod: aContext method.
	subscriptionsBinding value ifNil: [
		subscriptionsBinding value: WeakIdentityKeyDictionary new].
	^ subscriptionsBinding value
		at: aContext
		ifAbsentPut: [WeakSet new]