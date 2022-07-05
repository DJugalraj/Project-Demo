node {
    checkout scm
    stage ('pull latest image')
    def image
    docker.withRegistry('https://registry.hub.docker.com', 'fae60226-f483-4b46-9e72-65eeaa7f3385') { 
       image = docker.image('doc17/demopipeline:latest')
       image.pull()
    stage ('Deploy') {
   steps{
       sshagent(credentials : ['d0432491-b02b-45c8-b62e-70e36ff65e8a']) {
           sh 'ssh -o StrictHostKeyChecking=no root@192.168.121.95 uptime'
           sh 'ssh -v root@192.168.121.95 helm install apache /home/hscuser/pipeline-demo/'
}
  }
}
    }
}
