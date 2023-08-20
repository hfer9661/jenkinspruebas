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
                    // Agregar el contenedor Jenkins al grupo docker
                    sh 'groupadd -g $(stat -c %g /var/run/docker.sock) docker'
                    sh 'usermod -aG docker jenkins'
                    
                    // Construir la imagen Docker
                    def imageName = "my-flask-app:latest"
                    def dockerImage = docker.build(imageName, "-f Dockerfile .")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def containerName = "my-flask-container"
                    def imageName = "my-flask-app:latest"

                    docker.image(imageName).run('-p 8080:5000 --name ' + containerName)
                }
            }
        }
    }
}