
pipeline{
    agent any
    tools {
        terraform 'terraform'
    }
     stages{
        stage('Git Checkout'){
            steps{
                git credentialsId: 'git credentials id', url: 'https://github.com/bmanoj18/teeraform.git'
            }
        }
        
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform apply'){
            steps{
                sh 'terraform apply'
            }
        }
    }
    }
