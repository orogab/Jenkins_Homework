pipeline {
    agent any
        //label 'jenkins-slave'
   // }

    stages {
        stage('Download Repository') {
            steps {
                // GitHub repository-t letoltese
                git 'https://github.com/orogab/Jenkins_Homework.git'
            }
        }
        stage('Run Bash Script') {
            steps {
                // bash script futtatas
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
