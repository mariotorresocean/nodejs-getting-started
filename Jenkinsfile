pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                script {
                    echo 'Construindo imagem Docker...'
                    // Constrói a imagem baseada no Dockerfile que já existe no projeto
                    docker.build("minha-app-node")
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo 'Realizando Deploy...'
                    // 1. Remove versão antiga se existir (o || true evita erro na primeira vez)
                    sh 'docker rm -f minha-app-rodando || true'
                    
                    // 2. Sobe a nova versão na porta 5000
                    sh 'docker run -d -p 5000:5006 --name minha-app-rodando minha-app-node'
                }
            }
        }
    }
}
