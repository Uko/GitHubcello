actions
classPathsFromPackage: packagePath

	^  (self stonOfapiRequestTo: packagePath)
		select: [ :item |
			(item at: 'type') = 'dir' and: [
				|dirName|
				dirName := (item at: 'name').
			  (dirName beginsWith: 'BaselineOf') and: [
				dirName endsWith: '.class' ] ] ]
		thenCollect: [ :item |
			item at: 'path' ]