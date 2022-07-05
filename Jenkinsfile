node {
    checkout scm
  docker.withRegistry('https://hub.docker.com/') {
  DOCKERHUB_CREDENTIALS=credentials('dockerhub-cred-doc17/macbook@2021')
         sh 'docker pull doc17/demopipeline:latest'
  }
}
