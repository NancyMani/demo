pipeline {
      agent any
   
      stages {
          stage('build') {
                def mvnhome = tool name: 'maven-3.6.3', type: 'maven'
                steps {
                      sh "${mvnhome}/bin/mvn --version"
                   }
            }
      }
}
