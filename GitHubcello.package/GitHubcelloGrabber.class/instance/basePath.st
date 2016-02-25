accessing
basePath

	^ basePath ifNil: [ basePath :=
		'repos/{1}/{2}/contents' format: {user . repo} ]