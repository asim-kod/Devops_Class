pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                println("This is a build stage")
            }
        }
        stage('Test') {
            steps {
                println("This is a Test stage")
            }
        }
        stage('UAT') {
            steps {
                sh ''' echo "this is a UAT stage"  '''
            }
        }
        stage('Deploy') {
            steps {
               sh '''
                   sudo yum update 
                    sudo yum install httpd -y
                    wget https://www.free-css.com/assets/files/free-css-templates/download/page296/browny.zip
                    unzip browny.zip
                    systemctl start httpd
                    systemctl enable httpd
                    mkdir /var/www/html/laptop
                    mv /var/lib/jenkins/workspace/pipeline_1/<dir name> /var/www/html
                    echo "welcome to laptop page: "  >> /var/www/html/laptop/index.html
                    hostname >> var/www/html/laptop/index.html
                '''
            }
        }
    }
}