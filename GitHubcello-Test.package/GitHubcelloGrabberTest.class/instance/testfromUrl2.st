tests
testfromUrl2

	self
		shouldnt: [ (GitHubcelloGrabber fromUrl: 'https://github.com/me/my-project') ]
		raise: GCWrongRepositoryURIError
	