pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Print COBOL Files') {
            steps {
                bat 'type hello.cbl'
                bat 'type calculator.cbl'
            }
        }
    }
}