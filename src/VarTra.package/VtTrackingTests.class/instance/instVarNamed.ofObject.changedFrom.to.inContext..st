notifications
instVarNamed: varName ofObject: source changedFrom: oldValue to: newValue inContext: aContext

	| notification |
	notification := Dictionary new
					at: #variable put: (self instVarNamed: varName ofObject: source);
					at: #oldValue put: oldValue;
					at: #newValue put: newValue;
					at: #context put: aContext;
					yourself.
	self notifications add: notification