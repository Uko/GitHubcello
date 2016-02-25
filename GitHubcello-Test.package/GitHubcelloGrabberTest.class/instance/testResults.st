tests
testResults

	| result |
	
	result := [ (GitHubcelloGrabber fromUrl: 'https://github.com/Uko/GitHubcello') results ]
		on: GCRequestLimitError
		do: [ ^ self ].
	
	self assert: result isCollection.
	self assert: result size equals: 1.
	self assert: result anyOne class equals: GCSpotterResult 