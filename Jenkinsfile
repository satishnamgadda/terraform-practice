pipeline {
    agent { label ('JDK11') }
    stages {
        stage('vcs') {
            steps {
                git url: "https://github.com/satishnamgadda/terraform-practice.git",
                    branch: "main"
            }
        }
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }    
        stage('terraform apply') {
            steps {
                sh 'terraform destroy -var-file "dev.tfvars" -auto-approve'
            }   
        }
    }         
}