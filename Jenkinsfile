pipeline {
    agent any
    stages {
        stage('git Checkout') {
            steps {
                // Checkout your repository containing the Terram configuration
                git branch: 'main', url: 'https://github.com/Ajithkumar1192000/terraform.git'
                
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
