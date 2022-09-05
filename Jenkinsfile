pipeline {
  agent any
  parameters {
    properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '', numToKeepStr: '5')), parameters([string(defaultValue: 'DEV', description: 'choose environment', name: 'ENV')]), pipelineTriggers([pollSCM('* * * * *')])])
  }
    stages {
    stage ('docker build'){
      steps {
        sh 'docker build -t image:1.0 .'
      }
    }
  }
}
