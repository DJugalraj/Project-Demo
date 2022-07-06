pipeline {
    agent any
   stage {
   steps{
       sshagent(['50a58c64-cc98-414a-a4b7-9f08b2127bb7']) {
       sh '''
           echo "Deploy Application"
           sshpass -p 'abc123' ssh -o StrictHostKeyChecking=no root@192.168.121.95 
           cd /home/hscuser/
           helm install apache pipeline-demo/
          '''
}
  }
}
}
