running
tearDown

	notifications := nil.
	self trackedVariable ifNotNil: [self untrackVariable].
	trackedVariable := nil