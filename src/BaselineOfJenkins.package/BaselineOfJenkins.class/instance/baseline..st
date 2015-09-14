api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ self json: spec.
			spec
				package: 'Jenkins-Core' with: [ spec requires: #('JSON') ];
				group: 'default' with: #('Jenkins-Core') ]