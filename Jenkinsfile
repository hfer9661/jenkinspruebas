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
                    // Construir la imagen Docker
                    def imageName = "my-flask-app:latest"
                    def dockerImage = docker.build(imageName, "-f Dockerfile .")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Detener y eliminar el contenedor existente
                    sh 'docker stop my-flask-container || true'
                    sh 'docker rm my-flask-container || true'
                    
                    // Ejecutar el nuevo contenedor
                    sh 'docker run -d -p 8080:5000 --name my-flask-container my-flask-app:latest'
                }
            }
        }
    }
}