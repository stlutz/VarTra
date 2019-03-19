notifications
tempVarNamed: varName changedFrom: oldValue to: newValue inContext: aContext

	| notification |
	notification := Dictionary new
					at: #variable put: (self tempVarNamed: varName ofContext: aContext);
					at: #oldValue put: oldValue;
					at: #newValue put: newValue;
					at: #context put: aContext;
					yourself.
	self notifications add: notification