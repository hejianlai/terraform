#!/bin/sh

yum update -y
yum install nginx -y
systemctl enable nginx
systemctl start nginx
# echo "Hello World. The time is now $(date -R)!" | tee /root/userdata_test.txt
sed -i "s/Welcome to CentOS/Happy Chinese Valentine's Day!/g" /usr/share/nginx/html/index.html
# systemctl restart nginx


