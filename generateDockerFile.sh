#!/bin/sh

#define the template.
cat  << EOF
FROM tomcat:8.5.39-jre8-alpine
MAINTAINER Nikita b <rani.hirave@cognologix.com>


COPY reports.war /usr/local/tomcat/webapps/
COPY setenv.sh /usr/local/tomcat/bin/

EXPOSE 8080
EXPOSE 8787
#ENV JAVA_OPTS '$JAVA_OPTS -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=n'
CMD ["catalina.sh", "run"]
EOF

