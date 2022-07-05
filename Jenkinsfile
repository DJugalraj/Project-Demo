node {
    checkout scm
    docker.withRegistry('https://hub.docker.com/', 'doc17') {        
   def image = docker.image('doc17/demopipeline:latest')
       image .pull()                 
  }
