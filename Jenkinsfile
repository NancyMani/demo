pipeline {
      agent { 
            dockerfile true
      }
      stages { 
            stage('build') { 
                  steps { 
                        echo "worked"
                        sh "mvn --version"
                  }
            }
      }
}

