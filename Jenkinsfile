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
        stage('Deploy') {
            steps {
                script {
                    echo 'Realizando o deploy...'
                    sh 'docker run -d -p 5000:5006 --name appnodejsheroku minha-app-node'
                }
            }
        }
    }
}