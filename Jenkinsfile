pipeline {
    agent {
        docker {
            image 'python:3.9-slim' // Specify the Docker image to use
            // args '-v /tmp:/tmp' // Optional: Additional Docker arguments (e.g., for volume mounts)
        }
    }

    stages {
       
        stage('Build') {
            
            steps {
                script {
                    try {
                        // Running the build.sh script and checking its exit status
                        sh 'echo "Building the application to exec..."'
                        sh 'chmod +x ./scripts/build.sh'
                        sh './scripts/build.sh main.py'  // Replace with your script location

                    } catch (Exception e) {
                        // If the script fails, the pipeline will fail
                        error "Build failed: ${e.getMessage()}"
                    }
                }
                
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
