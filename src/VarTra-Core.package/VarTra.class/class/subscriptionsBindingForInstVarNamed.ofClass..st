subscriptions management
subscriptionsBindingForInstVarNamed: instVarName ofClass: aClass

	^ (aClass classThatDefinesInstanceVariable: instVarName)
		ifNotNil: [:cls |
			(self instVarSubscriptionsBindingsForClass: cls)
				at: instVarName asSymbol
				ifAbsentPut: [
					(SubscriptionsBindingKeyPrefix , 'Inst:' , instVarName) -> nil]]
		ifNil: [self error: 'Unknown instance variable']