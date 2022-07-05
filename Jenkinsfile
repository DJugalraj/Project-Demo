pipeline {
    agent any
    stages {
def remote = [:]
    remote.name = 'root'
    remote.user = 'root'
    remote.password = 'abc123'
    remote.allowAnyHosts = true
    stage('Remote SSH') {
       helm install apache /home/hscuser/pipeline-demo/
	}
}
