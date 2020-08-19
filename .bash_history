pwd
top
yum install java-1.8.0-openjdk-devel -y
 curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key  
yum install jenkins -y
yum install firewalld -y
systemctl start firewalld
systemctl enable firewalld
firewall-cmd --add-port=8080/tcp
netstat -ntlup | grep 8080
firewall-cmd --add-port=8080/tcp
systemctl restart jenkins
systemctl status jenkins
top
cat /var/lib/jenkins/secrets/initialAdminPassword
top
