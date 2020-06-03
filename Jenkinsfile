pipeline {
      agent { 
            docker {
                   image 'maven:3-alpine' 
                   args '-v /root/.m2:/root/.m2' 
              }
      }
         //   tools { 
           //       maven "3.6.3"
           // }
     
           // environment { 
       //             mvnhome = tool name: 'maven-3.6.3', type: 'maven'
         //   }    
   
      stages {
          stage('build') {
                
                steps {
                      sh "mvn --version"
                      sh "mvn -B -DskipTests clean package"
                   }
            }
            stage('test on dockerfile') { 
                  agent { Dockerfile true }
            }
      }
 }
