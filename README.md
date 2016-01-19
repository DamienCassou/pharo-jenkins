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

zipArtifact := pillar lastSuccessfulBuild runs anyOne artifacts detect: [ :artifact | artifact name = 'Pillar.zip' ].

ZnClient new url: zipArtifact url; downloadTo: 'Pillar.zip'
```

### Use a Jenkins protected by a password:

```smalltalk
| server job zipArtifact | 

server := JenkinsServer name: 'aServerName' url: ('https://yourURL' asUrl) username: 'x.y@something.com'; token: 'aToken'; yourself.

"Your username should be the email address of your Jenkins account.
You can find your token in the settings of your account.
Account -> Configure -> API Token"

job := server jobs detect: [ :job | job name = 'aJobName' ].

zipArtifact := job lastSuccessfulBuild runs anyOne artifacts detect: [ :artifact | artifact name = 'anArtefactName.zip' ].

ZnClient new url: zipArtifact url; downloadTo: 'aName.zip'
```
