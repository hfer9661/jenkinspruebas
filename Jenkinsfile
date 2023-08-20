pipeline {
    agent any

    stages {
        stage('Detect Versions') {
            steps {
                script {
                    def jenkinsVersion = env.JENKINS_VERSION
                    def dockerVersion = tool name: 'docker', type: 'Tool Type' // Reemplaza 'Tool Type' con el tipo de herramienta Docker configurada en tu Jenkins
                    
                    echo "Jenkins Version: ${jenkinsVersion}"
                    echo "Docker Version: ${dockerVersion}"
                }
            }
        }
    }
}