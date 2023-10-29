pipeline {
    agent {label 'Jenkins-Agent'}
    tools {
      jdk 'Java17'
      maven 'Maven3'
    }
    stages{          
        stage("Checkout from SCM"){
            steps{
              git branch: 'master', credentialsId: 'github', url: 'https://github.com/pankaj507/SpringHelloAPP'
            }
        } 
        stage("Build Application"){
            steps{
              bat "mvn clean package"
            }
        } 
        stage("Test Application"){
            steps{
              bat "mvn test"
            }
        } 
        stage("Static Analysis"){
            steps{
                withSonarQubeEnv('sonarqube') {
                   bat 'mvn clean package sonar:sonar'
   	               echo 'Static Analysis Completed'
                }
            }
        } 
    }
}
  
