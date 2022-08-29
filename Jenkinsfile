pipeline {
    agent any 
    stages {
        stage('Build') {
            steps {
                script{
                       sh "sudo docker ps"
//                        sh "sudo docker-compose up"
                       sh "sudo docker pull python"
                       sh "sudo docker images"
                }
                echo 'Build Successful' 
            }
        }
        stage('Dev Deploy') {
            steps {
                script{
                       sh "sudo aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 894811220469.dkr.ecr.us-east-1.amazonaws.com "
                       sh "docker run --name python-devcon -d python"
//                        sh "docker build -t testing ."
                       sh "docker tag python 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
                       sh "docker push 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
                }
                echo 'Deployed successful' 
            }
        }
        stage('QA Deploy') {
            input {
                message "Are we good to deploy in QA?"
                ok "Yes"
            }
            steps {
                script{
                       
                    sh "echo '${BUILD_NUMBER}'"
                    sh "sudo aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 894811220469.dkr.ecr.us-east-1.amazonaws.com "
                    sh "docker run --name python-qacon -d python"
                    sh "docker tag python 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
                    sh "docker push 894811220469.dkr.ecr.us-east-1.amazonaws.com/demo-repo:latest"
                }
                echo 'Qa Deployed successful' 
            }
        }
    }
}
