pipeline {
    
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
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
			 dockerImage = docker.build registry
		   }
                }
            }
	
	     stage('Upload Image to ECR') {
	     steps{   
		 script {
		    withDockerRegistry(credentialsId: 'ecr:eu-west-1:aws-credential', url: 'https://182313166565.dkr.ecr.eu-west-1.amazonaws.com') {

			    sh 'docker push 182313166565.dkr.ecr.eu-west-1.amazonaws.com/docker-pri-app:latest'
			}
		}
	    
	      }
	    }

	
        
       }
}
