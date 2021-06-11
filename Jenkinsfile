pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    registry ="vijayapandian/python-app"
    }
            
    stages {
        stage ('Checkout') {
            steps {
                checkout scm
                }
            }
		
	stage ('Build  image') {
            steps {
		 script {
               		 def img = docker.build registry
		   }
                }
            }
        
        }

}
