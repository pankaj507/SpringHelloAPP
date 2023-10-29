pipeline {
    agent {label 'Jenkins-Agent'}
    tools {
      jdk 'Java17'
      maven 'Maven3'
    }
    stages{
          stage("Cleanup workspace"){
            steps{              
            }
        }
        stage("Checkout from SCM"){
            steps{
              git branch: 'master', credentialsId: 'github', url: 'https://github.com/pankaj507/SpringHelloAPP'
            }
        } 
        stage("Build Application"){
            steps{
              sh "mvn clean package"
            }
        } 
        stage("Test Application"){
            steps{
              sh "mvn test"
            }
        } 
    }
}
  
