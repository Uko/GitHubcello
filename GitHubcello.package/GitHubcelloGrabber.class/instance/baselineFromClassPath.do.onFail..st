actions
baselineFromClassPath: classUrl do: successBlock onFail: failBlock

	(self stonOfapiRequestTo: classUrl)
		detect: [ :item |
			(item at: 'type') = 'file' and: [
			#('properties.json' 'properties.ston') includes: (item at: 'name') ] ]
		ifFound: [ :item |
			| propDict |
			propDict := (self stonFromRsponse: 
				(ZnEasy get: (item at: 'download_url'))).
			(propDict at: 'super') = 'BaselineOf'
				ifTrue: [ successBlock cull: ((propDict at: 'name') allButFirst: 10) ]
				ifFalse: [ failBlock ] ]
		ifNone: failBlock
		