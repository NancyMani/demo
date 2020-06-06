pipeline { 
      agent { 
            docker { 
                  image 'maven:3-alpine'
                  args '-v/root/.m2:/root/.m2'
            }
      }
      stages { 
     
            stage('maven build') { 
                  steps { 
                        sh "mvn -B -DskipTests clean package"
                        
                  }
            }
            stage('building image') { 
               
                  steps { 
                     
                        script { 
                              docker.withRegistry('', 'dockerhub') { 
                              def app = docker.build("nancyrheniusbenny/demo:${BUILD_NUMBER}")
                              app.push()
                              
                               }
                          }
                     }
               }
         }
}
