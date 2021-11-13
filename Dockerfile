FROM rockylinux/rockylinux:latest

ENV container docker
RUN yum update -y
RUN yum install -y yum-utils
RUN yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
RUN yum -y install vagrant

CMD ["/usr/sbin/init"]
