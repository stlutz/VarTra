*VarTra
visitTrackedAssignmentNode: aTrackedAssignmentNode

	aTrackedAssignmentNode value accept: self.
	aTrackedAssignmentNode variable accept: self