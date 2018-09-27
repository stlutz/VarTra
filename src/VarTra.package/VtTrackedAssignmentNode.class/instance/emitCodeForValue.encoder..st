code generation
emitCodeForValue: stack encoder: encoder

	^ (self actualNode: encoder) emitCodeForValue: stack encoder: encoder