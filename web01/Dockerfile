FROM nginx
RUN apt-get -y update
RUN apt-get install -y iputils-ping net-tools vim curl zabbix-agent
COPY index.html /usr/share/nginx/html/

COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

RUN /etc/init.d/zabbix-agent restart
