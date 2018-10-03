instruction decoding
jump: offset if: condition

	trackedAssignment ifNil: [
		super jump: offset if: condition]