// Tell Jenkins how to build projects from this repository
pipeline {
	agent {
		label 'windows'
	}
	
	parameters {
		string(name: "LV2018_PATH", defaultValue: "E:\\Program Files (x86)\\National Instruments\\Circuit Design Suite 14.1\\LabVIEW 2018\\LabVIEW.exe", description: "")
	}
	
	stages { 
		stage('Build') {				
			steps { 
				timeout(time: 5, unit: 'MINUTES') {	
					bat 'LabVIEWCLI -LabVIEWPath "%LV2018_PATH%" -LogToConsole true -OperationName RunVI -VIPath "%WORKSPACE%\\ci-script.vi" "%WORKSPACE%\\InstaCoverage_CI_Demonstrator.lvproj" "%WORKSPACE%"'
				}
			}
		}	
		stage('Unit test report processing') {
			steps {
				script {
					def reportFileName = bat "echo unittest_report_${env.BRANCH_NAME.replace('/', '_')}_${env.BUILD_ID}.html"
				}
				bat 'copy "%WORKSPACE%\\report\\report.html" "%WORKSPACE%\\report\\reportFileName"'			
				junit '**/report/report.xml'
				publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'report', reportFiles: "report_${env.BRANCH_NAME.replace('/', '_')}_${env.BUILD_ID}.html", reportName: 'Unit Test Report', reportTitles: ''])
				archiveArtifacts "report\\unittest_report_${env.BRANCH_NAME.replace('/', '_')}_${env.BUILD_ID}.html"
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