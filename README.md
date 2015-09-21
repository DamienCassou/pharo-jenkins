# pharo-jenkins
API to inspect Jenkins servers from Pharo

## Installing

```smalltalk
Metacello new 
  baseline: #Jenkins;
  githubUser: 'DamienCassou' project: 'pharo-jenkins' commitish: 'master' path: 'src';
  load.
```

## Using

```smalltalk
| pillar zipArtifact | 

pillar := JenkinsServer pharoContributions jobs detect: [ :job | job name = 'Pillar' ].

zipArtifact := pillar lastSuccessfulBuild runs anyOne artifacts detect: [ :artifact | artifact name = 'Pillar.zip' ]

ZnClient new url: zipArtifact url; downloadTo: 'Pillar.zip'
```
