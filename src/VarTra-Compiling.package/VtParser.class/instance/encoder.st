as yet unclassified
encoder

	^ encoder ifNil: [
		encoder := VtEncoder new]