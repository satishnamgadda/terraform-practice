pipeline {
    agent { label ('JDK11') }
    stages {
        stage('vcs') {
            steps {
                git url: "https://github.com/satishnamgadda/terraform-practice.git",
                    branch: "main"
            }
        }
        stage('terraform') {
            steps {
                sh 'terraform init',
                sh 'terraform apply -auto-approve'
            }
        }
}