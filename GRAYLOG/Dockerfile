#GRAYLOG
FROM graylog/graylog:4.2

RUN apt-get -y update

RUN apt-get install -y iputils-ping net-tools iptables vim curl zabbix-agent sudo

COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

RUN systemctl restart zabbix-agent