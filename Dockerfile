FROM centos:7
#设置作者
#MAINTAINER 
#设置环境变量
ENV HOME /home/polaris
RUN mkdir $HOME

#设置工作目录
WORKDIR $HOME

#复制文件
#COPY polaris $HOME/
# 安装依赖
RUN yum install lsof unzip net-tools crontabs -y

#声明使用的端口，需要-p去绑定宿主机否则将随机绑定
EXPOSE 8080
EXPOSE 8090
EXPOSE 9090
EXPOSE 9091
CMD	bash install.sh && /bin/bash

