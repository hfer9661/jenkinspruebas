pipeline {
    agent any

    stages {
        stage('Detect Versions') {
            steps {
                script {
                    def jenkinsVersion = tool name: 'jenkins', type: 'jenkins'
                    def dockerVersion = tool name: 'docker', type: 'Tool Type' // Reemplaza 'Tool Type' con el tipo de herramienta Docker configurada en tu Jenkins
                    
                    echo "Jenkins Version: ${jenkinsVersion}"
                    echo "Docker Version: ${dockerVersion}"
                }
            }
        }
    }
}