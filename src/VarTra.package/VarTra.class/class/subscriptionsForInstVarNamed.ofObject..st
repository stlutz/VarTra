subscriptions management
subscriptionsForInstVarNamed: instVarName ofObject: anObject
	"Returns a set of objects subscribed to changes of the instance variable named 'instVarName'. If there previously were no subscribers to this instance variable anywhere (even for other objects), then the subscriptions binding's value will be set to be non-nil - therefore moving past the tracking guard and potentially impacting performance."
	| subscriptionsBinding |
	subscriptionsBinding := self
								subscriptionsBindingForInstVarNamed: instVarName
								ofClass: anObject class.
	subscriptionsBinding value ifNil: [
		subscriptionsBinding value: WeakIdentityKeyDictionary new].
	^ subscriptionsBinding value
		at: anObject
		ifAbsentPut: [WeakSet new]