pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build("my-flask-app:latest", "-f Dockerfile .")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def containerName = "my-flask-container"
                    def imageName = "my-flask-app:latest"

                    docker.image(imageName).run("-p 8080:5000 --name ${containerName}")
                }
            }
        }
    }
}