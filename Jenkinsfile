pipeline {
    agent {
        docker { 
            image 'docker:latest' 
            args '--rm -v /var/run/docker.sock:/var/run/docker.sock -u root'
            
        }
    }
    environment {
	    registry ="vijayapandian/python-app"
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
	    stage ('Push image') {
            steps {
		 script {
               		 docker.withRegistry('https://registry.hub.docker.com', 'df652229-91c9-48d0-aff1-d138d231c66a') {
            		dockerImage.push()
			 }	 
		   }
                }
            }
	    
	    stage('Docker Run') {
	     steps{
		 script {
		    dockerImage.run("-p 8096:5000 --rm --name python-appContainer")
		 }
	      }
	    }
        
       }
}
