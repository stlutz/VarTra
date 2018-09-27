subscriptions management
subscriptionsBindingForInstVarNamed: instVarName ofClass: aClass

	^ (self instVarSubscriptionsBindingsForClass: aClass)
		at: instVarName asSymbol
		ifAbsentPut: [
			(self subscriptionsBindingKeyPrefix , aClass , ':' , instVarName) asSymbol -> nil]