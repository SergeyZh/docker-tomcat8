FROM sergeyzh/tomcat8-log4j2:jdk7-1.7.0_80-8.5.13

MAINTAINER Sergey Zhukov, sergey@jetbrains.com

ENV LFS_VER 4.2.0

RUN wget -O /home/tomcat/apache-tomcat-current/lib/lfsappenders-${LFS_VER}.jar http://www.moonlit-software.com/logfaces/downloads/lfsappenders-${LFS_VER}.jar
ADD lfs-config.sh /root/prerun/

# Apply additional transformations to children images
ONBUILD ADD wrapper /home/tomcat/wrapper/
ONBUILD ADD xslt /home/tomcat/xslt/
ONBUILD ADD cacerts /home/tomcat/cacerts/
ONBUILD RUN bash -c ". /apply.sh"

