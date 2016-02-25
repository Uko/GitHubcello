tests
testProcess

	| result |
	
	result := GitHubcelloGrabber process: 'https://github.com/Uko/GitHubcello'.
	
	self assert: result isCollection.
	self assert: result size equals: 1.
	self assert: result anyOne class equals: GCSpotterResult 