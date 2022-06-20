FROM tomcat:8.0-alpine
#RUN apt-get update
#RUN apt-get install vim -y


COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf


ADD pg02.war /usr/local/tomcat/webapps
CMD ["catalina.sh","run"]