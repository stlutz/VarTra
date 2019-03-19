running
tearDown

	notifications := nil.
	trackedVariable ifNotNil: [self untrackVariable].
	trackedVariable := nil