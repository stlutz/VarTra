*VarTra
lookupSubscriptionsBinding: encoder

	^ VarTra
		subscriptionsBindingForInstVarNamed: self name
		ofClass: encoder classEncoding