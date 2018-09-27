closure analysis
analyseTempsWithin: scopeBlock "<BlockNode>"  rootNode: rootNode "<MethodNode>" assignmentPools: assignmentPools "<Dictionary>"
	"N.B.  since assigment happens _after_ the value is evaluated the value is sent the message _first_."
	self actualNode
		analyseTempsWithin: scopeBlock
		rootNode: rootNode
		assignmentPools: assignmentPools