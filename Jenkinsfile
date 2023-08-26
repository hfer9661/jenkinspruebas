pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    def imageName = "my-flask-app:latest"
                    sh "docker build --verbose -t $imageName -f Dockerfile ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def containerName = "my-flask-container"
                    def imageName = "my-flask-app:latest"
                    
                    sh "docker stop $containerName || true"
                    sh "docker rm $containerName || true"
                    sh "docker run -d -p 8081:5000 --name $containerName $imageName"
                }
            }
        }
    }
}