pipeline {
    agent any
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                withCredentials([file(credentialsId: 'gcp-service-account-key', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    script {
                        if (isUnix()) {
                            sh 'terraform init'
                        } else {
                            bat 'terraform init'
                        }
                    }
                }
            }
        }
        stage('Terraform Plan') {
            steps {
                withCredentials([file(credentialsId: 'gcp-service-account-key', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
                    script {
                        if (isUnix()) {
                            sh 'terraform plan'
                        } else {
                            bat 'terraform plan'
                        }
                    }
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                withCredentials([file(credentialsId: 'gcp-service-account-key', variable: 'GOOGLE_APPLICATION_CREDENTIALS')]) {
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