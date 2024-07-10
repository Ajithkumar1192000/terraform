pipeline {
    agent any
"""
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id') // Replace with your Jenkins credential ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key') // Replace with your Jenkins credential ID
    }
"""
    stages {
        stage('git Checkout') {
            steps {
                // Checkout your repository containing the Terram configuration
                git branch
                
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Run Terraform plan and save the output to a file
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Apply the Terraform plan
                    sh 'terraform apply --auto-approve'
                }
            } 
        }

        stage('Terraform destory') {
            steps {
                script {
                    // Apply the Terraform plan
                    sh 'terraform destroy --auto-approve'
                }
            }
        }
        

    }

   
}
