pipeline {
	agent any
	tools {
    	maven 'my_mvn'
	}
	stages {
    	stage("Checkout") {   
        	steps {               	 
            	git branch: 'main', url: 'https://github.com/manikcloud/manik-calculator.git'        	 
           	 
        	}    
    	}
    	stage(' maven clean') {
        	steps {
        	sh "mvn clean"  	 
        	}
    	}
    	stage('maven build') {
        	steps {
        	sh "mvn compile"  	 
        	}
    	}
   	 
    	stage("Unit test") {          	 
        	steps {  	 
            	sh "mvn test"          	 
       	}
		}
    	stage("Deploy On Server") {          	 
        	steps {  	 
            	deploy adapters: [tomcat9(credentialsId: 'tomcat-9', path: '', url: 'http://44.206.250.166:8090/')], contextPath: '/manik-calculator', war: 'manik-calculator.war'         	 
       	}
       	       	
       	
}
}
