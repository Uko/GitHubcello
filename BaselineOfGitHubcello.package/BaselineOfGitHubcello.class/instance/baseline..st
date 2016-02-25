baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'GitHubcello'
			with: [ spec requires: #('STON') ];
			
			package: 'GitHubcello-Test'
			with: [ spec requires: #('GitHubcello') ].
		
		spec project: 'STON' with: [
  				spec
    					className: 'ConfigurationOfSTON';
    					version: #stable;
    					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/STON/main' ].
		
		 ]
	

	