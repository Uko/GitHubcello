tests
testfromUrl

	self
		should: [ (GitHubcelloGrabber fromUrl: 'https://google.com') ]
		raise: GCWrongRepositoryURIError
	