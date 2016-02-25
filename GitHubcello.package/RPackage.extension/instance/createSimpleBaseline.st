*githubcello
createSimpleBaseline

	| theName package class |
	theName := 'BaselineOf', self name.
	package := RPackageOrganizer default registerPackageNamed: theName.
	
	class := BaselineOf subclass: theName.
	package addClass: class.
	
	class
		compile: 'baseline: spec
	<baseline>
	
	spec for: #common do: [ spec package: ', self name surroundedBySingleQuotes, ' ]'
	
		classified: 'baseline'.
		
	class comment: 'A baseline for ', self name, 'package'.
		
	package mcWorkingCopy repositoryGroup addRepositoryGroup:
		self mcWorkingCopy repositoryGroup.
		
	^ package 