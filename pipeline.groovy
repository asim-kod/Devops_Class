pipeline {
    agent  { label 'label-1' }
    stages {
        stage('git-checkout') {
            steps {
                sh'sudo apt-get update'
                sh'sudo apt-get install vim unzip git -y'
                sh'git clone https://github.com/swapnibrad/student-ui.git'
            }
        }
        stage('build-mvn') {
            steps {
                sh'sudo apt-get update'
                sh'sudo apt-get install maven -y'
                sh'sudo mvn -f ./student-ui clean package'
            }
        }
        stage('tomcat') {
            steps {
                sh ''' 
                sudo curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.zip
                sudo unzip apache-tomcat-9.0.100.zip
                sh ./apache-tomcat-9.0.100/bin/catalina.sh start
                cp ./student-ui/target/studentapp-2.2-SNAPSHOT.war ./apache-tomcat-9.0.100/webapps/studentapp.war

                '''
            }
        }
        stage('my-sql-server') {
            steps {
               sh '''
                   sudo yum update 
                    sudo apt install mariadb-server -y
                    systemctl start mariadb
                '''
            }
        }
    }
}