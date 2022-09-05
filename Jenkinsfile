node ('linux-node'){
  parameters {
      properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')), parameters([string(defaultValue: 'DEV', description: 'choose environment', name: 'ENV')]), pipelineTriggers([pollSCM('* * * * *')])])
    }
  
        stage ('clone'){
      
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sathishreddy844/shyamreddy.git']]])
      
    }
    stage ('docker build'){
        sh 'sudo chmod 777 /var/run/docker.sock'
      
        sh 'docker build -t image:1.0 .'
      }
    
  }
