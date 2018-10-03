instruction decoding
jump: offset

	trackedAssignment ifNil: [
		super jump: offset]