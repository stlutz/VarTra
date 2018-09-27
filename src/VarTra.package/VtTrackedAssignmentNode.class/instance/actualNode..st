node generation
actualNode: encoder

	^ actualNode ifNil: [actualNode := self guardedAssignmentNode: encoder]