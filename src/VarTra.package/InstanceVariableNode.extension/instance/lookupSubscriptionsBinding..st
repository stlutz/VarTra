*VarTra
lookupSubscriptionsBinding: encoder

	^ (encoder classEncoding classThatDefinesInstanceVariable: self name)
		ifNotNil: [:cls | VarTra
						subscriptionsBindingForInstVarNamed: self name
						ofClass: cls]