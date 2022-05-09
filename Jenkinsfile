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
                        sh 'sudo docker compose --env-file ./config/test.env down'
                    } finally {
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo docker compose -p acnh-mate-test --env-file ./config/test.env up -d'
            }
        }
        stage("Push images to registry") {
            steps {
                sh "sudo docker compose --env-file ./config/test.env push"
            }
        }
    }
    post{
        always{
            withCredentials([string(credentialsId: 'DISCORD_WEBHOOK', variable: 'DISCORD_WEBHOOK_URL')]){
                discordSend description: env.GIT_COMMITTER_NAME, footer: env.GIT_URL, link: env.BUILD_URL, result: currentBuild.currentResult, title: JOB_NAME, webhookURL: "${DISCORD_WEBHOOK_URL}"
            }
        }
    }
}
