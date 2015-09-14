protected
jsonQuery: query
	| queryUrl |
	queryUrl := self url / 'api' / 'json' ? ('tree' -> query).
	^ Json
		readFrom: (self downloadToPositionableStream: queryUrl mimeType: ZnMimeType applicationJson)