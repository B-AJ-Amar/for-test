pipeline {
    agent any 

    stages {
       
        stage('Build') {
            
            steps {
                sh 'echo "Building the application to exec..."'
                sh 'chmod +x ./scripts/build.sh'
                sh './scripts/build.sh main.py'
                
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying the application..."'
                sh 'echo "Deployed successfuly"'
            }
        }
    }

   
}
