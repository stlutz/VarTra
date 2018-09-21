as yet unclassified
trackedAssignmentTo: varNode sourceRange: interval

	| subscriptionsNode subscriptionsBinding |
	subscriptionsBinding := self subscriptionsBindingFor: varNode.
	subscriptionsNode := encoder
							global: subscriptionsBinding
							name: subscriptionsBinding key.
	^ MessageNode new
		receiver: subscriptionsNode
		selector: #ifNil:ifNotNil:
		arguments: {
			BlockNode withJust: (self untrackedAssignmentTo: varNode sourceRange: interval).
			BlockNode withJust: (
				self
					notify: subscriptionsNode
					thatVariable: varNode
					changedTo: (self untrackedAssignmentTo: varNode sourceRange: interval))}
		precedence: 3
		from: encoder
		sourceRange: interval