pipeline {
    agent {label 'Jenkins-Agent'}
    tools {
      jdk 'Java17'
      maven 'Maven3'
    }
    environment {
        APP_NAME = "SpringHelloAPP-ci-image"
        RELEASE = "1.0.0"
        DOCKER_USER = "pankajkumarprakashe@gmail.com"
        DOCKER_PASS = 'Ngp$20221'
        IMAGE_NAME = "${DOCKER_USER}" + "/" + "${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
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
        stage("Build and Push Docker Image"){
            steps{
                script {
                            docker.withRegistry(''. DOCKER_PASS){
                            docker_image = docker.build "${IMAGE_NAME}"
                         }
                            docker.withRegistry(''. DOCKER_PASS){
                            docker_image.push("${IMAGE_TAG}")
                            docker_image.push('latest')
                        }                   
                   }  
            }
         }        
    }
}
  
