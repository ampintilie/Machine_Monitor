#!/bin/bash

START=$1
END=$2
for ((i=$START;i<=$END;i++)); do
    echo "Adding trigger to machine $i"
    juju run --machine $i 'sudo tee -a /etc/zabbix/zabbix_agentd.d/userparameter_mysql.conf <<TEXT
# Discover services inside machines:
UserParameter=services.discovery,/etc/zabbix/external_scripts/machine_discover_services.sh

#Get uptime of the service
UserParameter=machine_uptime_service[*],/etc/zabbix/external_scripts/machine_uptime_service.sh \$1

#Get the status of the service
UserParameter=machine_status_service[*],systemctl is-active \$1
TEXT'
    echo "Restarting agent on machine $i"
    juju run --machine $i 'sudo systemctl restart zabbix-agent.service'
done
