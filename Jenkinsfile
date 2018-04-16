pipeline {
  agent any
  stages {
    stage('prep env') {
      steps {
        sh "mkdir -p tmp"
      }
    }
    stage('build redoc') {
      steps {
        sh "BRANCH=${env.BRANCH_NAME} make branch"
        sh "cp -R ./version/${env.BRANCH_NAME} tmp/redoc/"
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
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git fetch git@github.com:velopaymentsapi/VeloOpenApi.git gh-pages"
        sh "git checkout gh-pages"
        sh "GIT_SSH_COMMAND='ssh -i /var/lib/jenkins/.ssh/velopaymentsopenapi' git pull"
        sh "cp tmp/redoc ./version/${env.BRANCH_NAME}"
        sh "cp -R tmp/swagger swagger"
        sh "if [ '${env.BRANCH_NAME}' = 'master' ]; then ln -sf ./version/${env.BRANCH_NAME}/index.html index.html; git add index.html; fi;"
        sh "cp spec/openapi.yaml ./version/${env.BRANCH_NAME}/"
        sh "git add swagger"
        sh "git add version"
        sh '''sed -i "s/^index.html$//g" .gitignore'''
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
