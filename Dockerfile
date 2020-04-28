FROM centos
RUN yum update -y
RUN yum install java-1.8.0-openjdk -y
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN yum install jenkins -y
EXPOSE 8080
RUN systemctl enable jenkins
CMD systemctl start jenkins

