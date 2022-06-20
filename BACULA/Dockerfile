#BACULA
FROM fametec/bacula-director:11.0.5

RUN apt-get -y update && apt-get upgrade

RUN apt-get install -y iputils-ping net-tools iptables vim curl zabbix-agent sudo

RUN COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

RUN systemctl restart zabbix-agent
