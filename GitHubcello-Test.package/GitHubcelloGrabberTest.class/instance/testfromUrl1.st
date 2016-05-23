tests
testfromUrl1

	self
		shouldnt: [ (GitHubcelloGrabber fromUrl: 'https://github.com/Uko/GitHubcello') ]
		raise: GCWrongRepositoryURIError
	