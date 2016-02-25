accessing
rootContents

	^ rootContents ifNil: [ rootContents :=
		STON fromString: (
			ZnEasy get: (
				'https://api.github.com/repos/{1}/{2}/contents'
					format: {user . repo})) contents ]