
pipeline{
    agent any
     stages{
        stage('Git Checkout'){
            steps{
                checkout scm
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
