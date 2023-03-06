pipeline {
  agent any
  stages{    
    stage('checkout') {
      steps {
        checkout scm
      }
    }    
      stage('TF Init&Plan') {
        steps {
          sh "cd $Workspace/"
          sh "terraform init"
          sh "terraform plan"
      }
    }
      stage('TF Apply') {
        steps {
          sh 'terraform apply -auto-approve'
        }
      }
    }
    }
