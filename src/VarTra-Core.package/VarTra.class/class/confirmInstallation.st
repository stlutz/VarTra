initialization
confirmInstallation

	^ UIManager default
		confirm: 'You are about to recompile all methods to include tracking of variable assignments.
If you are unsure, you can choose ''no'' and manually restart the installation process by evaluating `VarTra install`.'
		title: 'Install Variable Tracking?'