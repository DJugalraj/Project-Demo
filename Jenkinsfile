node {
    checkout scm
    stage ('pull latest image') {
    def image
    docker.withRegistry('https://hub.docker.com/') {
       sh 'docker login -u doc17 --passwd Macbook@2022'
       image = docker.image('doc17/demopipeline:latest')
       image.pull()
  }
}
}
