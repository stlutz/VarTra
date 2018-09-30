preferences
compileMethodsWithVariableTracking
	"Accessor for the system-wide preference"
	<preference: 'Compile methods with variable tracking'
		category: 'VarTra'
		description: 'When true, changes the compile process to wrap ALL variable assignments, so that other objects can track changes to these variables'
		type: #Boolean>
	^ CompileMethodsWithVariableTracking ifNil: [true]