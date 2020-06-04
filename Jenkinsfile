def commit_id
pipeline { 
      agent { 
            docker { 
                  image 'maven:3-alpine'
                  args '-v/root/.m2:/root/.m2'
            }
      }
      stages { 
            stage('clone repo') { 
                  steps { 
                        echo "hi"
                        script { 
                              checkout scm
                              sh "git rev-parse --short HEAD > .git/commit-id"                        
                              commit_id = readFile('.git/commit-id').trim()
                        }
                  }
            }
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
                              def app = docker.build("nancyrheniusbenny/demo:${commit_id}", '.').push()
                              }
                        }
                  }
            }
      }
}
