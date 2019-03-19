*VarTra-Compiling
lookupSubscriptionsNode: encoder

	| subscriptionsBinding |
	subscriptionsBinding := self lookupSubscriptionsBinding: encoder.
	^ encoder
		global: subscriptionsBinding
		name: subscriptionsBinding key