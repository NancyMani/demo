pipeline {
      agent any
      tools {
            maven 'apache-maven-3.6.0'
      }
      stages {
          stage('build') {
                steps {
                    sh 'mvn -B -DskipTests clean package'
                }
            }
      }
}
