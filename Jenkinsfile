pipeline {
    agent any
    
    stages {
        stage('checkout and install') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'github-credentials', url: 'https://github.com/SubramanyaNR/SPRING_BOOT.git']])       
                sh 'mvn clean install'    
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build Docker image using Dockerfile and JAR file
                sh 'docker build -t spr_boot .'
            }
        }
        
        stage('Push to Docker Registry') {
            steps {
                // Push Docker image to a Docker registry
                withCredentials([usernamePassword(credentialsId: 'docker-credentials', passwordVariable: 'DOCKER_PASSWORD', usernameVariable: 'DOCKER_USERNAME')]) {
                    sh 'docker login -u subramanya777 -p Octagon@744'
                    sh 'docker push spr_name'
                }
            }
        }
        
        stage('Deploy to Kubernetes') {
            steps {
                // Deploy the Docker image to Kubernetes using manifest files
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl apply -f ingress.yaml'
            }
        }
    }
}