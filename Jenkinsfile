pipeline {
    agent any
  stages {
      stage('Install apache') {
  node {
  sshagent (credentials: ['50a58c64-cc98-414a-a4b7-9f08b2127bb7']) {
    sh 'ssh -o StrictHostKeyChecking=no -l root 192.168.121.95 uname -a'
  }
}
  }
}
}
