requests
apiRequestTo: string

	^ self client
			path: self basePath, string;
			get;
			response