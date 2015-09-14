protected
jsonFields
	^ {'name'.
	'url'.
	('lastSuccessfulBuild[' , JenkinsBuild jsonFieldsQuery , ']')}