accessing
url
	"Since a Jenkins representation is a tree with a server as the root, all the objects should ask to there parent the username and the password of the Jenkins it is protected by a password."

	^ (properties at: 'url') asUrl
		username: parent url username;
		password: parent url password;
		yourself