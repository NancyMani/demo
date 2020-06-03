pipeline {
      agent any{ 
            environment { 
             mvnhome = tool name: 'maven-3.6.3', type: 'maven'
            }
      }      
   
      stages {
          stage('build') {
                
                steps {
                      sh (" $mvnhome /bin/mvn --version")
                   }
            }
      }
}
