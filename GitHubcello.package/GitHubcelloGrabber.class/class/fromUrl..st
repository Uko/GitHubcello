instance creation
fromUrl: string

	| regex |
	regex := 'https?\://github\.com/(\w+)/(\w+)/?' asRegex.
	
	^ (regex matches: string)
		ifFalse: [ GCWrongRepositoryURIError signal: 'Invalid URI: ', string ]
		ifTrue: [
			self
				user: (regex subexpression: 2)
				repo: (regex subexpression: 3) ]