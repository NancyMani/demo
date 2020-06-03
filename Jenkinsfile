pipeline {
      agent any
      tools {
            maven "3.6"
      }
      stages {
          stage('build') {
                steps {
                    sh "mvn --version"
                     sh "mvn clean install"
                }
            }
      }
}
