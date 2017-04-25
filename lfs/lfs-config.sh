#!/bin/bash

sed -i "s/replace-with-real-app-name/${LFS_APP_NAME}/" /home/tomcat/apache-tomcat-current/conf/tomcat-log4j2.xml
sed -i "s/replace-with-real-lfs-servers/${LFS_SERVERS}/" /home/tomcat/apache-tomcat-current/conf/tomcat-log4j2.xml

