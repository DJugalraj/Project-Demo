pipeline {
    agent any
    stages {
	    stage('connect remote host') {
		    steps {
			    def remote = [:]
			    remote.user = 'root'
			    remote.password = 'abc123'
			    remote.allowAnyHosts = true
			    stage('Remote SSH') {
				    helm install apache /home/hscuser/pipeline-demo  }
	    		}
	   }
    }
}
