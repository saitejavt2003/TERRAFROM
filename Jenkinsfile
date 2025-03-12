pipeline {
    agent any

    environment {
        GOOGLE_CREDENTIALS = credentials('wise-scene-453411-c9-f7a1505610da.json') 
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/saitejavt2003/TERRAFROM.git'
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
