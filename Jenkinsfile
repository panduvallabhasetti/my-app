pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-id')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/my-app.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker Build & Push') {
            steps {
                script {
                    docker.withRegistry('', DOCKERHUB_CREDENTIALS) {
                        def appImage = docker.build("panduvallabhasetti/my-app:${env.BUILD_ID}")
                        appImage.push('latest')
                    }
                }
            }
        }
    }
}

