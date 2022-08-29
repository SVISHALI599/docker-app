pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script{
                       sh "sudo docker ps"
//                        sh "sudo docker-compose up"
                       sh "sudo docker images"
                }
                echo 'Build Successful' 
            }
        }
        stage('Deploy') {
            steps {
                script{
                       sh "sudo aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 894811220469.dkr.ecr.us-east-1.amazonaws.com "
                       sh "docker run --name demo-repo df3dfd6f2043"
                       sh "docker build -t demo-repo ."
//                        sh "docker tag demo-repo:latest 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
//                        sh "docker push 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
                }
                echo 'Deployed successful' 
            }
        }
    }
}
