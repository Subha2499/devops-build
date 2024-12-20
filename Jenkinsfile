pipeline {
    agent any 
environment {
IMAGE_NAME = "myfirstdocker"
IMAGE_TAG = "v2"
APP_NAME = "REACTAPP"
REGISTRY = "registry.subha2499"
}
stages {
        stage('Build') {
            steps {
              sh 'docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .'
            }
        }
stage('Push to Devops-Build Repository'){
{
steps{
    sh 'docker login -u subha2499 -p 
sh 'docker tag ${IMAGE_NAME}:${IMAGE_TAG} ${REGISTRY}/dev/${APP_NAME}/web'
sh 'docker push ${REGISTRY}/dev/{$APP_NAME}/web'
}
}
}
            
