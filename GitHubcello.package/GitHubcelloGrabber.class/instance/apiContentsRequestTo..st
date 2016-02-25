requests
apiContentsRequestTo: string

	^ self client
		path: self basePath, string;
		get