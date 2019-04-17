#!/bin/bash
old="# UnsafeUserParameters=0"
new="UnsafeUserParameters=1"
machine=$1
juju run --machine $machine "sudo sed -i 's/$old/$new/g' /etc/zabbix/zabbix_agentd.conf"
juju run --machine $machine "sudo systemctl restart zabbix-agent.service"
