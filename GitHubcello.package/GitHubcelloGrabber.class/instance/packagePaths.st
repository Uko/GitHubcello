actions
packagePaths

	^ self rootContents
		select: [ :item |
			(item at: 'type') = 'dir' and: [ 
			(item at: 'name') endsWith: '.package' ] ]
		thenCollect: [ :item |
			item at: 'path' ]