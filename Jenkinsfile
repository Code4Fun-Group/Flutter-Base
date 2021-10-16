#!/usr/bin/env groovy

pipeline {
  agent { 
    label 'slave-macos'
  }

  options {
    disableConcurrentBuilds()
  }

  stages {
    stage("Initialize") {
      steps {
        sh """
        flutter pub get
        """
      }
    }
    stage("Flutter lint") {
      steps {
        sh "flutter analyze"
      }
    }
  }
}
