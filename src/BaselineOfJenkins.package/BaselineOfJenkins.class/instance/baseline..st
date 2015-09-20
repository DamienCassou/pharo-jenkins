api projectSpec
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ self json: spec; gtSpotter: spec; gtInspector: spec.
			spec
				package: 'Jenkins-Core' with: [ spec requires: #('JSON') ];
				package: 'Jenkins-Pharo-Tools' with: [ spec requires: #('Jenkins-Core' 'GTSpotter' 'GTInspector') ];
				group: 'default' with: #('Jenkins-Core' 'Jenkins-Pharo-Tools') ]