subscriptions management
subscriptionsBindingForTempVarNamed: tempVarName ofMethod: aCompiledMethod

	^ aCompiledMethod allLiterals detect: [:literal |
		literal isVariableBinding 
			and: [literal isSubscriptionsBinding]
			and: [literal key endsWith: tempVarName]]