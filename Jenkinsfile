pipeline {
    agent any
	tools {
	    maven "3.9.1"
	 	}
	stages {
	    stage('Git CheckOut') {
		    steps {
			   git branch: 'main', credentialsId: '', url: 'https://github.com/ma1456/JFrog.git'
			}
		}
        stage('Clean and Install') {
            steps {
                bat 'mvn clean install'
            }
        }
        stage ('Package'){
            steps {
                bat 'mvn package'
             }
        }
	stage ('Server'){
            steps {
               rtServer (
                 id: "Artifactory",
                 url: 'https://manoj1.jfrog.io/artifactory',
                 username: 'manojvarma',
                  password: 'Polo@1234',
                  bypassProxy: true,
                   timeout: 300
                        )
            }
        }
        stage('Upload'){
            steps{
                rtUpload (
                 serverId:"Artifactory" ,
                  spec: '''{
                   "files": [
                      {
                      "pattern": "*.war",
                      "target": "manojvarma-libs-snapshot-local"
                      }
                            ]
                           }''',
                        )
            }
        }
        stage ('Publish build info') {
            steps {
                rtPublishBuildInfo (
                    serverId: "Artifactory"
                )
            }
        }
    }
}
