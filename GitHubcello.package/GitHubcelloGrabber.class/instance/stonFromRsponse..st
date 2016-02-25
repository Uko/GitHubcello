requests
stonFromRsponse: aResponse
		
	aResponse code = 200 ifTrue: [ ^ STON fromString: aResponse contents ].
	
	(aResponse headers at: #'X-Ratelimit-Remaining') = '0' ifTrue: [
		GCRequestLimitError signalEndTime: (
			DateAndTime fromUnixTime: (aResponse headers at: #'X-Ratelimit-Reset') asNumber) ].
		
	GCRequestFailureError signalCode: aResponse code