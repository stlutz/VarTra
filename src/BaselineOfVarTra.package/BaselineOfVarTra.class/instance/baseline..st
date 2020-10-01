baseline
baseline: spec
	<baseline>
	spec for: #common do: [
		spec
			package: 'VarTra-Compiling';
			package: 'VarTra-Core' with: [
				spec requires: #('VarTra-Compiling')];
			package: 'VarTra-Tests' with: [
				spec requires: #('core')].
		spec
			group: 'default' with: #('core' 'tests');
			group: 'tests' with: #('VarTra-Tests');
			group: 'core' with: #('VarTra-Core' 'VarTra-Compiling');
			group: 'CI' with: #('tests')].
	
	spec for: #(#'squeak5.1.x' #'squeak5.0.x' #'squeak4.x') do: [
		spec
			package: 'VarTra-Compat51-Compiling';
			package: 'VarTra-Compiling' with: [
				spec requires: #('VarTra-Compat51-Compiling')]]