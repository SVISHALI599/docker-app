pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script{
                    sh "docker-compose up"
                }
                echo 'Build Successful' 
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deployed successful' 
            }
        }
    }
}
