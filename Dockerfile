FROM centos:7
#update and install nginx section
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y nginx
RUN yum install -y vim
#create path and add index.html
WORKDIR /Users/vijayreddy/Desktop/Do/shoe-mart

#RUN rm index.html
RUN touch index.html

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]

