node generation
guardedAssignmentNode: encoder

	| subscriptionsNode |
	subscriptionsNode := encoder subscriptionsNodeFor: self variable.
	^ MessageNode new
		receiver: subscriptionsNode
		selector: #ifNil:ifNotNil:
		arguments: {
			BlockNode withJust: (self assignmentNode: encoder).
			BlockNode withJust: (self
									trackedAssignmentNode: encoder
									subscriptions: subscriptionsNode)}
		precedence: 3
		from: encoder
		sourceRange: self sourceRange