pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    registry ="182313166565.dkr.ecr.eu-west-1.amazonaws.com/docker-pri-app"
	     registryCredential = 'df652229-91c9-48d0-aff1-d138d231c66a'
	    //registry= "369989769935.dkr.ecr.ap-south-1.amazonaws.com/testapp"
	    dockerImage =""
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
