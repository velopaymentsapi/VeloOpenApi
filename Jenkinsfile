pipeline {
  agent any
  stages {
    stage('build') {
      steps {
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git fetch git@github.com:velopaymentsapi/VeloOpenApi.git gh-pages"
        sh "git checkout gh-pages"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git pull"
        sh "git merge origin/master"
        sh "BRANCH=${env.BRANCH_NAME} make branch"
        sh '''sed -i "s/^index.html$//g" .gitignore'''
      }
    }
    stage('deploy') {
      steps {
        sh "if [ '${env.BRANCH_NAME}' = 'master' ]; then ln -sf ./version/${env.BRANCH_NAME}/index.html index.html; git add index.html; fi;"
        sh "git add version"
        sh "git commit -am 'Jenkins build $BUILD_NUMBER - $BUILD_URL'"
        sh "GIT_SSH_COMMAND='ssh -vvv -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git push origin gh-pages"
      }
    }
  }
}
