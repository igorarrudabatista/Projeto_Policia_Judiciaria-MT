# Autor: Igor de Arruda Batista
# GOVERNO DO ESTADO DE MATO GROSSO
# SECRETARIA DE ESTADO DE SEGURANÇA PÚBLICA
# POLÍCIA JUDICIÁRIA CIVIL
# CONTROLADORIA GERAL DO ESTADO
#
#
# Containers criados em um arquivo somente nomeado na raiz
- docker-compose.yml
#
# Sobre Base de Dados Preferencialmente PostgreSQL
- Alguns containers, tais como GLPI, Graylog, Baculum não estão utilizando o PostgreSQL como sua database por não serem compatíveis.

# Sobre as Vlans
- Foram criadas 3 vlans, sendo elas Vlan20, Vlan30 e Vlan40
- 192.168.20.0/24 Vlan20 - GW: 192.168.20.1
- 192.168.30.0/24 Vlan30 - GW: 192.168.30.1
- 192.168.40.0/24 Vlan40 - GW: 192.168.40.1 
- Obs. São criadas ao executar docker-compose up -d (referencia o arquivo docker-compose.yml)

# Vlan 20 para as aplicações WEB:
- Proxy
- Web01
- Web02
- GLPI
- Zabbix
- Samba
- Graylog
- Baculum 

# Vlan 30 para as Data Bases:
- Mongo DB
- Mariadb
- PostgreSQL

# Vlan 40 Segurança e Rede
- Firewall
- Zabbix
- Graylog

# Zabbix
- Em cada pasta há um arquivo nomeado de Dockerfile, os mesmos fazem referência ao servidor zabbix.

# Proxy
- O container Proxy está recebendo e redirecionando os serviços para os determinados serviços/containers. Não está fazendo o balanceamento de carga por upstream.

# Firewall 
- Utilizando o iptables neste projeto, os comandos abaixo devem ser executados dentro do container.
- Obs. para acessar o container ( docker exec -it firewall /bin/bash )
- 1. sh /home/iptables.sh







