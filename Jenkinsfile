pipeline {
    agent any

    stages {
        stage('Build Backend') {
            steps {
                dir('AcnhMateApi') {
                    sh 'rm -rf ./bin'
                    sh 'rm -rf ./obj'
                    sh 'dotnet build'
                }
            }
        }

        stage('Build Frontend') {
            steps {
                sh "echo 'Building Frontend'"
            }
        }

        stage('Clean Containers') {
            steps {
                script {
                    try {
                        sh 'docker compose --env-file ./config/prod.env down'
                    } finally {
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker compose -p acnh-mate --env-file ./config/prod.env up -d'
            }
        }

        stage('Send Discord Notification') {
            steps {
                sh "echo 'Doing discord stuff'"
            }
        }
    }
}
