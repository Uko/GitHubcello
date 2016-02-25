instance creation
process: uri

	^ [ (self fromUrl: uri) loadScripts ]
		on: Error
		do: #()