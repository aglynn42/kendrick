baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/UMMISCO/Kendrick/main/'.
		spec project: 'Moose' with: [
				spec
					className: #ConfigurationOfMoose;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Moose/Moose/main/' ].
		spec package: 'Kendrick'. ].