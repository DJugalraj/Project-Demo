node {
    checkout scm
    stage ('pull latest image') {
    def image
    docker.withRegistry('https://hub.docker.com/') {
       sh 'docker login -u doc17 -p Macbook@2022 doc17/demopipeline:latest'
       image = docker.image('doc17/demopipeline:latest')
       image.pull()
  }
}
}
