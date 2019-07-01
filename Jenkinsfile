properties([parameters([choice(choices: 'master\nroom', description: 'pipe-line parameterised job', name: 'branch')])])



node{
    stage('scm checkout'){
        echo "pulling changes from branch , ${params.branch}"
        git credentialsId: 'git-credits', url: 'https://github.com/mano8888/cat.git' , branch: "${params.branch}"
    }
}
