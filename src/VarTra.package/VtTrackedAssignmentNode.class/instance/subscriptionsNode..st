node generation
subscriptionsNode: encoder

	| subscriptionsBinding |
	subscriptionsBinding := self subscriptionsBinding: encoder.
	^ encoder
		global: subscriptionsBinding
		name: subscriptionsBinding key