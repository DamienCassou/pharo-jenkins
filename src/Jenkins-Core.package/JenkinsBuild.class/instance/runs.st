accessing
runs
	| runs |
	runs := self query: JenkinsRun.
	^ self isLastSuccessful
		ifTrue: [ runs do: [ :run | self propagateLastSuccessfulTagTo: run ] ]
		ifFalse: [ runs ]