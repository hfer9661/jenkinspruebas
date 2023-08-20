// Declarative //
pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
            additionalBuildArgs '--network=host'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building xD'
                sh 'python --version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing :D'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy :P'
            }
        }
    }
}