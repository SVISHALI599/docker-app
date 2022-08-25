pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script{
//                     sh "docker-compose up"
                       sh "docker images"
                       sh "docker ps"
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
