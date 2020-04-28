FROM centos:latest
RUN yum update -
RUN yum install java-1.8.0-openjdk -y
RUN yum install wget -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN yum install jenkins -y
CMD ["java", "-jar" , "/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080
