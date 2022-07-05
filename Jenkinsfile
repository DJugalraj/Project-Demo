stage('Docker Pull') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'doc17', passwordVariable: 'Macbook@2022', usernameVariable: 'doc17')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker pull doc17/demopipeline:latest'
        }
      }
}
