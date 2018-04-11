pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git pull git@github.com:velopaymentsapi/VeloOpenApi.git master"
        sh "make"
      }
    }
    stage('deploy') {
      steps {
        sh "git commit -am 'Jenkins build $BUILD_NUMBER - $BUILD_URL'"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git push ssh://git@github.com:velopaymentsapi/VeloOpenApi.git ${env.BRANCH_NAME}"
      }
    }
  }
}
