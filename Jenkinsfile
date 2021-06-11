pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    registry ="vijayapandian/pythonApp"
    }
            
    stages {
        stage ('Checkout') {
            steps {
                checkout scm
                }
            }
		
	stage ('Build  image') {
            steps {
                def img = docker.build registry
                }
            }
		
		stage ('Deployment Stage') {
            steps {
                echo "Deployment staage"
                }
            }
        
        }

}
