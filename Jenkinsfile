node {
    checkout scm {
docker.withRegistry('https://hub.docker.com/repository')
script {
    sh 'docker login -u doc17 -p Macbook@2022'
    sh 'docker pull doc17/demopipeline:latest'
  }
 }
}
