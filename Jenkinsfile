pipeline {
  agent any
  stages {
    stage('prep env') {
      steps {
        sh "rm -rf tmp"
        sh "mkdir tmp"
      }
    }
    stage('build redoc') {
      steps {
        sh "BRANCH=${env.BRANCH_NAME} make branch"
        sh "cp -R ./version/${env.BRANCH_NAME} tmp/redoc"
      }
    }
    stage('build swagger') {
      steps {
        dir("swagger") {
          sh "BRANCH=${env.BRANCH_NAME} make swagger"
          sh "cp -R dist/ ../tmp/swagger"
        }
      }
    }
    stage('stage gh-pages') {
      steps {
        sh "./ci/stage.sh ${env.BRANCH_NAME}"
      }
    }
    stage('deploy') {
      steps {
        sh "git commit -am 'Jenkins build $BUILD_NUMBER - $BUILD_URL'"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git push origin gh-pages"
      }
    }
  }
}
