pipeline {
    agent any
	tools {
	    maven "3.9.1"
	 	}
	stages {
	    stage('Git CheckOut') {
		    steps {
			   checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/ma1456/JFrog.git']])
			}
		}
        stage('Clean and Install') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage ('Package'){
            steps {
                sh 'mvn package'
             }
        }
	stage ('Server'){
            steps {
               rtServer (
                 id: "Artifactory",
                 url: 'http://manoj1.jfrog.io/artifactory',
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
                      "pattern": "*.jar",
                      "target": "manoj-jfrog-libs-snapshot-local/"
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
