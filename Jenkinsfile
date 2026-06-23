pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Print COBOL File') {
            steps {
                bat 'type hello.cbl'
            }
        }
    }
}