pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh "git checkout gh-pages"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git pull"
        sh "git merge origin/master"
        sh "BRANCH=${env.BRANCH_NAME} make branch"
        sh '''sed -i "s/^index.html$//g" .gitignore'''
      }
    }
    stage('deploy') {
      steps {
        sh "git commit -am 'Jenkins build $BUILD_NUMBER - $BUILD_URL'"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git push"
      }
    }
  }
}
