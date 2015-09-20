*jenkins-pharo-tools
spotterJenkinsServersFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'Jenkins servers';
		filter: GTFilterSubstring item: [ :filter :context | 
			JenkinsServer gtExamples do: filter ];
		wantsToDisplayOnEmptyQuery: false