// Tell Jenkins how to build projects from this repository
pipeline {
	agent {
		label 'windows'
	}
	
	stages { 
		stage('Build') { 
			steps { 
				bat '"ci-script.vi"'
			}
		}
	}
		
	post {
        always {
			junit '**/report.xml'
        }
        failure {
			echo 'Pipeline post action Failure.' 
		}
    }
}