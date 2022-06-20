#FIREWALL
FROM ubuntu
RUN apt-get -y update
RUN apt-get install -y iputils-ping net-tools iptables vim curl zabbix-agent 
COPY iptables.sh /home
COPY ./zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf

RUN /etc/init.d/zabbix-agent restart

ENTRYPOINT /bin/bash
# RUN chmod +x /home/iptables.sh
# RUN ./home/iptables.sh

#RUN iptables -P INPUT DROP

#USER root
# Liberar todo o acesso de um destino:
#Vlan20
# RUN iptables -A INPUT -s 192.168.20.0/24 -j ACCEPT
# # #Vlan30
# RUN iptables -A INPUT -s 192.168.30.0/24 -j ACCEPT
# # #vlan40
# RUN iptables -A INPUT -s 192.168.40.0/24 -j ACCEPT


#  RUN iptables -A FORWARD -s 192.168.20.0/24 -d 192.168.40.0/24 -j ACCEPT
#  RUN iptables -A FORWARD -d 192.168.20.0/24 -s 192.168.40.0/24 -j ACCEPT
# # #vlan30
#  RUN iptables -A FORWARD -s 192.168.30.0/24 -d 192.168.40.0/24 -j ACCEPT
#  RUN iptables -A FORWARD -d 192.168.30.0/24 -s 192.168.40.0/24 -j ACCEPT
# # #vlan40
#  RUN iptables -A FORWARD -s 192.168.40.0/24 -d 192.168.40.0/24 -j ACCEPT
#  RUN iptables -A FORWARD -d 192.168.40.0/24 -s 192.168.40.0/24 -j ACCEPT   


