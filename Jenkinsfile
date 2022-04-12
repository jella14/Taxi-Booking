pipeline {
    agent {label "Label-1"}
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/jella14/Taxi-Booking.git'
            }
        }

        stage('Build with Maven') {
            steps{
                sh 'mvn clean install'
            }
        }
        stage('Build docker image') {
            steps {  
                sh 'docker build -t jella96/taxi:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps {
                withCredentials([string(credentialsId: 'dockercred', variable: 'dockerhubpwd')]) {
                    sh "docker login -u jella96 -p ${dockerhubpwd}"
                }
            }
        }
        stage('push image') {
            steps{
                sh 'docker push jella96/taxi:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}
