instance creation
process: uri

	^ [ (self fromUrl: uri) results ]
		on: Error
		do: #()