node {
checkout scm
docker.withRegistry('https://hub.docker.com/repository/docker/doc17/demopipeline', 'doc17')
script {
    sh "`docker login -u doc17 -p Macbook@2022`"
    docker pull doc17/demopipeline:latest
}
}
