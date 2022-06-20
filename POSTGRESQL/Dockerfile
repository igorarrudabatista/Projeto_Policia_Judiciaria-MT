#GLPI
FROM postgres

RUN apt-get -y update && apt-get upgrade

RUN apt-get install -y iputils-ping net-tools iptables vim curl zabbix-agent sudo

COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

RUN /etc/init.d/zabbix-agent restart
