public access
encoder

	^ encoder ifNil: [
		encoder := VtEncoder new]