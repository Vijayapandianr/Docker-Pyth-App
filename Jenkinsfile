pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    registry ="public.ecr.aws/w7w7h7b5/dockerapp"
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
			sh 'aws ecr-public get-login-password --region eu-west-1 | docker login --username AWS --password-stdin public.ecr.aws/w7w7h7b5'
			sh 'docker push public.ecr.aws/w7w7h7b5/dockerapp:latest'
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
