pipeline {
    agent any

    environment {
        JD_IMAGE = "my-flask-app:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.example.com', 'docker-credentials-id') {
                        def customImage = docker.build(JD_IMAGE, "-f Dockerfile .")
                    }
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def containerName = "my-flask-container"
                    
                    sh "docker stop $containerName || true"
                    sh "docker rm $containerName || true"
                    sh "docker run -d -p 8081:5000 --name $containerName $JD_IMAGE"
                }
            }
        }
    }
}