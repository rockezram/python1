node('master')
{
    stage('code checkout')
    {
checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rockezram/python1.git']]])
    }
    stage('docker build')
    {
        sh 'docker build -t  devpracticep/dev:python-hello .'
        sh 'docker stop hello2 && docker rm hello2'
        sh 'docker run -dti -p 81:81 --name hello2 devpracticep/dev:python-hello'
        sh 'docker login -u "devpracticep" -p "Dev@12345" '
        sh 'docker push  devpracticep/dev:python-hello'
    }
}
