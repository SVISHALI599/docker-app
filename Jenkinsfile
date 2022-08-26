pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script{
//                        sh "sudo docker-compose up"
                       sh "sudo docker images"
                       sh "sudo docker ps"
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
