pipeline {
    agent any

    stages {
        stage('Build Backend') {
            steps {
                dir('AcnhMateApi') {
                    sh 'sudo rm -rf ./bin'
                    sh 'sudo rm -rf ./obj'
                    sh 'dotnet build'
                }
            }
        }

        stage('Build Frontend') {
            steps {
            }
        }

        stage('Clean Containers') {
            steps {
                script {
                    try {
                        sh 'sudo docker-compose --env-file ./config/prod.env down'
                    } finally {
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                sh 'sudo docker-compose -p acnh-mate --env-file ./config/prod.env up -d'
            }
        }

        stage('Send Discord Notification') {
            steps {
            }
        }
    }
}
