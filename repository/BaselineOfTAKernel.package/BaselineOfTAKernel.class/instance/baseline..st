baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec repository: 'github://TerraAustralis/TA-Kernel/repository' ].
	self
		baselineProjects: spec;
		baselineKernel: spec