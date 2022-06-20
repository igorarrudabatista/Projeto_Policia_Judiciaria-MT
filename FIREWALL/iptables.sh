 #!/bin/sh
 # Firewall apps - only allow apps run from "internet" group to run

#clear previous rules
sudo iptables -F


#vlan20
iptables -A INPUT -s 192.168.20.0/24 -j ACCEPT
#Vlan30
iptables -A INPUT -s 192.168.30.0/24 -j ACCEPT
#Vlan40
iptables -A INPUT -s 192.168.40.0/24 -j ACCEPT