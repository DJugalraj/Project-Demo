pipeline {
    agent any
  stages {
      stage('Install apache') {
          steps {
          sshagent(credentials: ['50a58c64-cc98-414a-a4b7-9f08b2127bb7']) {
            sh '''
                [ -d ~/.ssh ] || mkdir ~/.ssh && chmod 0700 ~/.ssh
                ssh-keyscan -t rsa,dsa root@192.168.121.95 >> ~/.ssh/known_hosts
                ssh root@192.168.121.95 ...
            '''
          }
      }
  }
}
}
