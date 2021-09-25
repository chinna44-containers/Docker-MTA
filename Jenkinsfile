node {
/***************************************
    BUILD
****************************************/
def dproject = 'dev-mta-repo-eu1n'
def dImgApp, dImageDB

 

stage ('BuildDockerImage'){
        docker.withRegistry('https://951854665038.dkr.ecr.eu-west-1.amazonaws.com/dev-mta-repo-eu1n'){
                git url: 'https://github.build.ge.com/pw-web/Container-Solutions.git'
        dImg = docker.build("${dproject}:${env.BUILD_NUMBER}", "-f MTA/Dockerfile MTA")
            echo "Completed Image Build : ${dproject}-app:${env.BUILD_NUMBER}"

 

        }
}
stage('Approve to Push') {
        input message: 'Approve ', ok: 'Approve'
        }
stage('Publish') {
        docker.withRegistry('https://951854665038.dkr.ecr.eu-west-1.amazonaws.com/dev-mta-repo-eu1n'){

 

        dImg.push();
    echo "Published Image Build : ${dproject}:${env.BUILD_NUMBER}"
          }

 

    }
stage('Approve to Promote') {
        input message: 'Approve ', ok: 'Approve'
        }    
stage('Promote') {
        docker.withRegistry('https://951854665038.dkr.ecr.eu-west-1.amazonaws.com/dev-mta-repo-eu1n'){
        dImg.push('latest');
    echo "Promoted Image to Latest : ${dproject}:${env.BUILD_NUMBER}"
        }
}
}
