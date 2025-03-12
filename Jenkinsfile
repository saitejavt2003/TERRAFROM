pipeline {
    agent any

    environment {
        GOOGLE_CREDENTIALS = credentials('gcp-service-account') // Jenkins Credential ID
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPO.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform Changes') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Terraform Configuration') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
