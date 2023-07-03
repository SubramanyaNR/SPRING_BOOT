pipeline {
    agent any

    stages {
      
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
