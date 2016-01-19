accessing
lastSuccessfulBuild
	| build |
	build := JenkinsBuild
		newWithProperties:
			(Dictionary new
				at: 'number' put: self lastSuccessfulBuildNumber;
				at: 'url' put: (self url / 'lastSuccessfulBuild') printString;
				yourself).
	^ build
		parent: self;
		yourself