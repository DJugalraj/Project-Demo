pipeline {
    agent any
  stages {
      stage('Install apache') { 
       steps { 
       script{
	    openshift.withCluster(){
           sh 'sshpass -p 'abc123' ssh -o StrictHostKeyChecking=no root@192.168.121.95'
    }
  }
 }
  }
 }
}
