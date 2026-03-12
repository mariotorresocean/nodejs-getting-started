pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                script {
                    echo 'Construindo imagem docker do NODEJS HEROKU...'
                    docker.build("minha-app-node")
                }
            }
        }
    }
}