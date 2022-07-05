node {
    checkout scm
    stage ('pull latest image') {
    def image
    docker.withRegistry('https://hub.docker.com/', 'fae60226-f483-4b46-9e72-65eeaa7f3385') {
       image = docker.image('doc17/demopipeline:latest')
       image.pull()
  }
}
}
