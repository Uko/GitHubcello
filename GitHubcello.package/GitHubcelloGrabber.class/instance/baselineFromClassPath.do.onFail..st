actions
baselineFromClassPath: classUrl do: successBlock onFail: failBlock

	(self stonOfapiRequestTo: classUrl)
		detect: [ :item |
			(item at: 'type') = 'file' and: [
			#('properties.json' 'properties.ston') includes: (item at: 'name') ] ]
		ifOne: [ :item |
			| propDict |
			propDict := (STON fromString:
				(ZnEasy get: (item at: 'download_url')) contents).
			(propDict at: 'super') = 'BaselineOf'
				ifTrue: [ successBlock cull: ((propDict at: 'name') allButFirst: 10) ]
				ifFalse: [ failBlock ] ]
		ifNone: failBlock
		