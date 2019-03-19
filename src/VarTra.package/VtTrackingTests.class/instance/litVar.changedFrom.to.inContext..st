notifications
litVar: litVarBinding changedFrom: oldValue to: newValue inContext: aContext

	| notification |
	notification := Dictionary new
					at: #variable put: (self litVar: litVarBinding);
					at: #oldValue put: oldValue;
					at: #newValue put: newValue;
					at: #context put: aContext;
					yourself.
	self notifications add: notification