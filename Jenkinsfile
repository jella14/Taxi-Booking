pipeline {
    agent {label "Label-1"}
    environment {
    DOCKERHUB_CREDENTIALS = credentials('Docker')
    }
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/jella14/Node-JS.git'
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t jella96/Taxi:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push jella96/Taxi:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}
