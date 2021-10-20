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
	   /* stage ('Push image') {
            steps {
		 script {
               		 docker.withRegistry('https://registry.hub.docker.com', 'credential-docker') {
            		dockerImage.push()
			 }	 
		   }
                }
            }
	    
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
