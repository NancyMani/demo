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
            stage('build image and push image') { 
               //  agent { dockerfile true }
                  steps { 
                        echo "Building and pushing the docker image into my dockerhub"
                        script { 
                              docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') { 
                              def app = docker.build("nancyrheniusbenny/demo", '.')
                              app.push()
                              }
                        }
                  }
            }
      }
}
