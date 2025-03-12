pipeline {
    agent any
    environment {
        
        GOOGLE_APPLICATION_CREDENTIALS = 'wise-scene-453411-c9-f7a1505610da.json'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                script {
                    
                    if (isUnix()) {
                        sh 'terraform init'
                    } else {
                        bat 'terraform init'
                    }
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'terraform plan'
                    } else {
                        bat 'terraform plan'
                    }
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    if (isUnix()) {
                        sh 'terraform apply -auto-approve'
                    } else {
                        bat 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
    post {
        always {
           
            echo 'Pipeline completed'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}