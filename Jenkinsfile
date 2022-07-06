pipeline {
    agent any
  stages {
      stage('Install apache') {
  node {
  sshagent (credentials: ['deploy-dev']) {
    sh 'ssh -o StrictHostKeyChecking=no -l cloudbees 192.168.1.106 uname -a'
  }
}
  }
}
}
