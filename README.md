# pharo-jenkins
API to inspect Jenkins servers from Pharo

## Installing

```smalltalk
Metacello new 
  baseline: #Jenkins;
  githubUser: 'DamienCassou' project: 'pharo-jenkins' commitish: 'master' path: 'src';
  load.
```
