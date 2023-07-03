pipeline {
    agent any

    stages {
        stage('AWS AUTHENTICATE') {
    steps {
        // aws authenticate
        
        sh 'aws configure set aws_access_key_id AKIAXGMGJQMBUCJ4N5II'
        sh 'aws configure set aws_secret_access_key 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'
        sh 'aws configure set default.region us-east-1'
    }
        }
        stage('EKS authenticate') {
        steps {
            // Authenticate with EKS
        sh 'aws eks update-kubeconfig --name spr_cluster --region us-east-2'
        }
        }

        stage('deploy') {
        steps{
        // Deploy the Docker image
        sh 'kubectl apply -f D:/1JOB & REZUME/platform/java-spring-boot-crud-without-database-master/java-spring-boot-crud-without-database-master/manifest-files/deployment.yaml'
        sh 'kubectl apply -f /manifest-files/service.yaml'
        sh 'kubectl apply -f /manifest-files/ingress.yaml'
      }
    }
}
}
