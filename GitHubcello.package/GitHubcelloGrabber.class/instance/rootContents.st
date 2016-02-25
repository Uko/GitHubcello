accessing
rootContents

	^ rootContents ifNil: [ rootContents := self stonOfapiRequestTo: '/' ]