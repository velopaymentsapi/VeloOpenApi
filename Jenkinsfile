pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh "git pull orign master"
        sh "make"
      }
    }
    stage('deploy') {
      steps {
      withCredentials([usernamePassword(credentialsId: "velopaymentsopenapi", passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USERNAME')]) {
        sh "git commit -am 'Jenkins build $BUILD_NUMBER - $BUILD_URL'"
        sh "git push https://${GIT_USERNAME}:${GIT_PASSWORD}@https://github.com/VeloPayments/VeloOpenApi.git ${env.BRANCH_NAME}"
      }
    }
  }
}
