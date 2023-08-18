pipeline {
    agent any

    stages {
        stage('build image') {
            steps {
                echo 'building new image now...'
                sh 'docker build -t abdelrahmansamy97/pipeline2image:$BUILD_NUMBER .'
            }
        }
       stage('push image') {
            steps {
                echo 'pushing the new image to the docker hub now...'
                withCredentials([usernamePassword(credentialsId: 'docker-hub-creds', usernameVariable: 'USER', passwordVariable: 'PASSWORD')]) {
                    sh 'docker login -u $USER -p $PASSWORD'
                }
                sh 'docker push abdelrahmansamy97/pipeline2image:$BUILD_NUMBER'
            }
        }
       stage('run app') {
            steps {
                echo 'running the app on a container now...'
                sh 'docker run -d --name pipeline2container abdelrahmansamy97/pipeline2image:$BUILD_NUMBER'
            }
        }
    }
}
