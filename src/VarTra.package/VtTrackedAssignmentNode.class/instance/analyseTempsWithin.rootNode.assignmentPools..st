closure analysis
analyseTempsWithin: scopeBlock "<BlockNode>"  rootNode: rootNode "<MethodNode>" assignmentPools: assignmentPools "<Dictionary>"
	value analyseTempsWithin: scopeBlock rootNode: rootNode assignmentPools: assignmentPools.
	varTraRegister ifNotNil: [:node |
		node beingAssignedToAnalyseTempsWithin: scopeBlock rootNode: rootNode assignmentPools: assignmentPools].
	variable beingAssignedToAnalyseTempsWithin: scopeBlock rootNode: rootNode assignmentPools: assignmentPools.
	notificationNode ifNotNil: [:node |
		node analyseTempsWithin: scopeBlock rootNode: rootNode assignmentPools: assignmentPools]