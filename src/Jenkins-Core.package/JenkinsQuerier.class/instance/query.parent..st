public
query: jenkinsType parent: aJenkinsObject
	| query |
	query := jenkinsType jsonName , '[' , jenkinsType jsonFieldsQuery , ']'.
	^ ((self jsonQuery: query) at: jenkinsType jsonName)
		ifNil: [ #() ]
		ifNotNil: [ :jsonObjects | 
			jsonObjects
				collect: [ :json | 
					(jenkinsType newWithProperties: json)
						parent: aJenkinsObject;
						yourself ] ]