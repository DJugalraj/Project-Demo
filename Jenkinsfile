pipeline {
    agent any
   steps{
       sshagent(['50a58c64-cc98-414a-a4b7-9f08b2127bb7']) {
       sh '''
           echo "Deploy Application"
           cd /home/hscuser/
           helm install apache pipeline-demo/
          '''
}
  }
}
