actions
results

	| scripts |
	scripts := Bag new.
	self packagePaths do: [ :package |
		(self classPathsFromPackage: package) do: [ :class |
			self
				baselineFromClassPath: class
				do: [ :name |
					scripts add: (GCSpotterResult
						new: name
						user: user
						repo: repo) ] ] ].
			
	^ scripts 