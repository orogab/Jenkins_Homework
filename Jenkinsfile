pipeline {
    agent any
        //label 'jenkins-slave'
   // }

    stages {
        stage('Download Repository') {
            steps {
                // GitHub repository-t letoltese
                git branch: 'main',
                url: 'https://github.com/orogab/Jenkins_Homework.git'
            }
        }
        stage('Run Bash Script') {
            steps {
                // bash script futtatas
                sh 'chmod +x ./apache_install.sh'
                sh './apache_install.sh'
            }
        }
        stage('Save Artifact') {
            steps {
                // artifact mentése
                archiveArtifacts artifacts: 'apache_install_date.txt', onlyIfSuccessful: true
            }
        }
    }
}
