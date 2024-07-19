pipeline {
    agent any
    
    environment {
        TF_CLI_ARGS = '-no-color'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your Git repository where Terraform code is stored
                git 'https://github.com/irohitrao/devopsToolsInstallation.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform in the directory where your Terraform code is
                    sh 'terraform init -input=false'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    // Perform a Terraform plan
                    sh 'terraform plan -input=false -out=tfplan'
                }
            }
        }
        
        // stage('Terraform Apply') {
        //     steps {
        //         script {
        //             // Apply the Terraform plan
        //             sh 'terraform apply -input=false -auto-approve tfplan'
        //         }
        //     }
        // }
    }
}
