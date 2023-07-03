pipeline {
    agent any

    stages {
        stage('Deploy') {
    steps {
        // Install and configure AWS CLI
        sh 'curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"'
        sh 'unzip awscliv2.zip'
        sh './aws/install'
        sh 'aws configure set aws_access_key_id YOUR_AWS_ACCESS_KEY'
        sh 'aws configure set aws_secret_access_key YOUR_AWS_SECRET_ACCESS_KEY'
        sh 'aws configure set default.region YOUR_AWS_REGION'
    }
        }
        stage('authenticate') {
        steps {
            // Authenticate with EKS
        sh 'aws eks update-kubeconfig --name spr_cluster --region us-east-2'
        }
        }

        stage('deploy') {
        steps{
        // Deploy the Docker image
        sh 'kubectl apply -f /manifest-files/deployment.yaml'
        sh 'kubectl apply -f /manifest-files/service.yaml'
        sh 'kubectl apply -f /manifest-files/ingress.yaml'
      }
    }
}
}
