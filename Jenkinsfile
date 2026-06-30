pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Detect Changed Files') {
            steps {
                script {
                    def changedFiles = bat(
                        script: 'git diff --name-only HEAD~1 HEAD',
                        returnStdout: true
                    ).trim()
                    echo "Changed files: ${changedFiles}"
                    env.CHANGED_FILES = changedFiles
                }
            }
        }
        stage('Run Changed COBOL Programs') {
            steps {
                script {
                    def files = env.CHANGED_FILES.split('\n')
                    files.each { file ->
                        file = file.trim()
                        if (file.endsWith('.cbl')) {
                            echo "Processing: ${file}"
                            bat "type ${file}"
                        }
                    }
                }
            }
        }
        stage('Upload to Mainframe') {
            steps {
                script {
                    def files = env.CHANGED_FILES.split('\n')
                    files.each { file ->
                        file = file.trim()
                        if (file.endsWith('.cbl')) {
                            def memberName = file
                                .replace('.cbl', '')
                                .toUpperCase()
                            echo "Uploading ${file} to Z86348.COBOL(${memberName})..."
                            bat "C:\\Users\\ABHISAM\\AppData\\Roaming\\npm\\zowe.cmd zos-files upload file-to-data-set ${file} \"Z86348.COBOL(${memberName})\""
                            echo "Mainframe updated successfully!"
                        }
                    }
                }
            }
        }
    }
}