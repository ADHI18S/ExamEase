pipeline {
    agent any
  tools {
    git 'Default'
    maven 'M3'
}

    
    stages {
        stage('Clone Repository') {
            steps {
                // Pull the code from GitHub
                git branch: 'main', url: "https://github.com/ADHI18S/examease.git"
            }
        }
        
        stage('Build with Maven') {
            steps {
                // Use Maven to build the project
                sh 'mvn clean package'
            }
        }
        
        stage('Docker Build') {
            steps {
                // Build Docker image
                sh 'docker build -t adhi .'
            }
        }
        
        stage('Docker Run') {
            steps {
                // Run Docker container
                sh 'docker run -d -p 9000:8080 adhi'
            }
        }
    }
    

}
