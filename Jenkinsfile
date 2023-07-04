pipeline {
    agent any

    stages {
        stage('AWS AUTHENTICATE') {
    steps {
        // aws authenticate
        
        sh 'aws configure set aws_access_key_id AKIAXYUNCWM6S7USPSHR'
        sh 'aws configure set aws_secret_access_key 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'
        sh 'aws configure set default.region us-east-1'
    }
        }
        stage('EKS authenticate') {
        steps {
            // Authenticate with EKS
        sh 'aws eks update-kubeconfig --name spring_cluster --region us-east-1'
        }
        }

        stage('deploy') {
        steps{
        // Deploy the Docker image
        sh 'kubectl apply -f https://github.com/SubramanyaNR/SPRING_BOOT/blob/master/manifest-files/deployment.yaml'
        sh 'kubectl apply -f https://github.com/SubramanyaNR/SPRING_BOOT/blob/master/manifest-files/service.yaml'
        sh 'kubectl apply -f https://github.com/SubramanyaNR/SPRING_BOOT/blob/master/manifest-files/ingress.yaml'
      }
    }
}
}