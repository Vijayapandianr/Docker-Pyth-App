pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    //registry ="182313166565.dkr.ecr.eu-west-1.amazonaws.com/docker-pri-app"
	    registry= "369989769935.dkr.ecr.ap-south-1.amazonaws.com/testapp"
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
	   stage('Pushing to ECR') {
	     steps{  
		 script {
			sh 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 369989769935.dkr.ecr.ap-south-1.amazonaws.com'
			sh 'docker push 369989769935.dkr.ecr.ap-south-1.amazonaws.com/testapp:latest'
		 }
        }
      }

	    /*
	    stage('docker stop container') {
		 steps {
		    sh 'docker ps -f name=python-appContainer -q | xargs --no-run-if-empty docker container stop'
		    sh 'docker container ls -a -fname=python-appContainer -q | xargs -r docker container rm'
		 }
       	     }
	    
	    stage('Docker Run') {
	     steps{
		 script {
		    dockerImage.run("-p 8096:5000 --rm --name python-appContainer")
		 }
	      }
	    } */
        
       }
}
