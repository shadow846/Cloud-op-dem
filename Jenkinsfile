pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/shadow846/Cloud-op-dem.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("cloudops-website:latest", ".")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker stop cloudops || true'
                sh 'docker rm cloudops || true'
                sh 'docker run -d -p 8080:80 --name cloudops cloudops-website:latest'
            }
        }
    }
}
