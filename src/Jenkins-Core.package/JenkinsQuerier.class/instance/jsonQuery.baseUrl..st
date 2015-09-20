protected
jsonQuery: query baseUrl: url
	| queryUrl |
	queryUrl := url / 'api' / 'json' ? ('tree' -> query).
	^ Json
		readFrom: (self downloadToPositionableStream: queryUrl mimeType: ZnMimeType applicationJson)