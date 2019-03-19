baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec
			package: 'VarTra-Compiling';
			package: 'VarTra-Core' with: [
				spec requires: #('VarTra-Compiling')];
			package: 'VarTra-Tests' with: [
				spec requires: #('VarTra-Core')].
		spec
			group: 'default' with: #('VarTra-Core' 'VarTra-Compiling' 'VarTra-Tests');
			group: 'CompleteWithoutTests' with: #('VarTra-Core' 'VarTra-Compiling');
			group: 'CompleteWithTests' with: #('CompleteWithoutTests' 'VarTra-Tests')]
