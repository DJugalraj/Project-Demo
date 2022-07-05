node {
    checkout scm {
docker.withRegistry('https://hub.docker.com/repository')
stage('Docker Pull') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'doc17', passwordVariable: 'Macbook@2022', usernameVariable: 'doc17')]) {
          sh "docker login -u ${usernameVariable} -p ${passwordVariable}"
          sh 'docker pull doc17/demopipeline:latest'
  }
 }
}  
}
}
