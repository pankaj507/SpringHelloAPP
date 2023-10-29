pipeline {
    agent {label 'Jenkins-Agent'}
    tools {
      jdk 'java17'
      maven 'Maven3'
    }
    stages{
      stage("Cleanup workspace"){
        steps{
          CleanWs()
        }
      }
    stage("Checkout from SCM"){
        stesps{
          git branch: 'main', crenentialsId: 'github', url: 'https://github.com/pankaj507/SpringHelloAPP'
    

  
