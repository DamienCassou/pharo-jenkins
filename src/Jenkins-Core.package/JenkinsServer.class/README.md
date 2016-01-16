I represent a Jenkins server.

A Jenkins server (http://jenkins-ci.org/) supports continuous integration through jobs.

JenkinsServer name: 'Pharo contributions' url: 'https://ci.inria.fr/pharo-contribution' asUrl

You have also the possibility to use me with a Jenkins protected by a password. In order to do that you need a username for the jenkins that should be your email. You also need a token that you can find into the configuration of your Jenkins account.

JenkinsServer
		name: 'YourJenkins' url: 'https://yourCI' asUrl username: 'your.email@somthing.com';
		token: 'a687364fcc1b079[...]9ab2839ab6b'