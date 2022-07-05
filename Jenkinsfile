node {
    checkout scm
docker.withRegistry('https://hub.docker.com/') {
stage('Login') {
steps {
sh 'docker login -u doc17 --passwd Macbook@2022'
sh 'docker pull doc17/demopipeline:latest'
  }
}
