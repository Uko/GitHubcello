testing
isFTRepo

	^ self rootContents anySatisfy: [ :item |
		(item at: 'type') = 'file' and: [ 
		(item at: 'name') = '.filetree' ] ]
