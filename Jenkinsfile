node {
    checkout scm
    stage ('pull latest image') {
    def image
       sh 'docker login -u doc17 --p Macbook@2022 https://registry.hub.docker.co'
       image = docker.image('doc17/demopipeline:latest')
       image.pull()
  }
}
