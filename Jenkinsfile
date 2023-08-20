pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t my-app:latest .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -p 8080:80 my-app:latest'
            }
        }
    }
}