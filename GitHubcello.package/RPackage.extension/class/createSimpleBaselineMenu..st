*githubcello
createSimpleBaselineMenu: aBuilder
	<nautilusGlobalPackageMenu>
	
	| package |
	
	package := aBuilder model selectedPackages ifNil: [ ^ self ] ifNotNil: #first.
	
	(aBuilder item: #'Create Baseline')
		icon: (Smalltalk ui icons iconNamed: #add);
		action: [ aBuilder model selectedPackage: package createSimpleBaseline ];
		order:  99999.