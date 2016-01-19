instance creation
name: aString url: anUrl username: aUsername token: aJenkinsToken
	^ (self name: aString url: anUrl)
		username: aUsername;
		token: aJenkinsToken;
		yourself