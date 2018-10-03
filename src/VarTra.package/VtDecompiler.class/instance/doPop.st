instruction decoding
doPop

	trackedAssignment ifNil: [
		super doPop]