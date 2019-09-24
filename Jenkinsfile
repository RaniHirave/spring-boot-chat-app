#!groovy
node('master') 
{
    try {
        stage("Cleanup Workspace")
        { 
        	deleteDir()
        }

        stage("Checkout")
        { 
          
            sh 'git clone https://ranihirave@bitbucket.org/ranihirave/dockerdemo.git' 
        }

        stage("Build image")
        {
            
            sh "${env.WORKSPACE}/spring-boot-websocket-chat-demo/build.sh"
            sh "${env.WORKSPACE}/spring-boot-websocket-chat-demo/dev.sh"
        }
        
       } 
    catch (err) {
        emailext (
                to: 'rani.hirave@cognologix.com',
                subject: "${env.JOB_NAME} (${env.BRANCH_NAME}-${env.BUILD_NUMBER}) failed",
                body: "Build URL: ${env.BUILD_URL}\n\nBuild Result: ${currentBuild.result}\n\nChanges:${currentBuild.changeSets}",
                attachLog: true,
                )
        throw err
    }
}
