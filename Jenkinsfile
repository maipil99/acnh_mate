pipeline {
    agent any

    stages {
        stage('Build Backend') {
            steps {
                dir('AcnhMateApi') {
                    sh 'dotnet clean'
                    sh 'dotnet publish -c Release -o published'
                }
            }
        }

        stage('Build Frontend') {
            steps {
                sh "echo 'Building Frontend'"
            }
        }
        stage('Testing') {
            steps {
                dir('AcnhMateApi/AcnhMateApi.Tests') {
                    sh 'sudo rm -rf ./TestResults'
                    sh 'dotnet test --collect:\'XPlat Code Coverage\''
                }
            }
            post {
                success {
                    archiveArtifacts 'AcnhMateApi/AcnhMateApi.Tests/TestResults/*/coverage.cobertura.xml'
                    publishCoverage adapters: [coberturaAdapter(path: 'AcnhMateApi/AcnhMateApi.Tests/TestResults/*/coverage.cobertura.xml', thresholds: [
                            [failUnhealthy: false, thresholdTarget: 'Conditional', unhealthyThreshold: 80.0, unstableThreshold: 50.0]
                    ])], sourceFileResolver: sourceFiles('NEVER_STORE')
                }
            }
        }
        stage('Clean Containers') {
            steps {
                script {
                    try {
                        sh 'sudo docker compose -p acnh-mate-api --env-file ./config/test.env down'
                    } finally {
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo docker compose --env-file ./config/test.env build backend'
                sh 'sudo docker compose -p acnh-mate-api --env-file ./config/test.env up -d'
            }
        }
        stage("Load Test") {
            sh "sudo k6 run performance/performance-test.js"
        }
        stage("Push images to registry") {
            steps {
                sh "sudo docker compose --env-file ./config/test.env push"
            }
        }
    }
    post {
        always {
            withCredentials([string(credentialsId: 'DISCORD_WEBHOOK', variable: 'DISCORD_WEBHOOK_URL')]) {
                discordSend description: env.GIT_COMMITTER_NAME, footer: env.GIT_URL, link: env.BUILD_URL, result: currentBuild.currentResult, title: JOB_NAME, webhookURL: "${DISCORD_WEBHOOK_URL}"
            }
        }
    }
}
