pipeline {
    agent any
    
            
    stages {
        stage ('Checkout') {
            steps {
                checkout scm 
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
