FROM centos:7.5.1804
RUN yum groupinstall -y "Development tools"
RUN yum install -y pcre-devel
RUN yum install -y cmake
RUN yum install -y boost-devel
RUN yum install -y clang
RUN yum install -y libcurl-devel
RUN yum install -y bash
RUN yum install -y epel-release
RUN yum install -y poco-devel
RUN yum install -y poco-net.x86_64
