public
query: jenkinsType parent: aJenkinsObject
	| query |
	query := jenkinsType jsonName , '[' , jenkinsType jsonFieldsQuery , ']'.
	^ ((self jsonQuery: query baseUrl: aJenkinsObject url) at: jenkinsType jsonName)
		ifNil: [ #() ]
		ifNotNil: [ :jsonObjects | 
			jsonObjects
				collect: [ :json | 
					(jenkinsType newWithProperties: json)
						parent: aJenkinsObject;
						yourself ] ]