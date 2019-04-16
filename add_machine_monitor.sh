#!/bin/bash

cd /etc/zabbix
sudo git clone https://github.com/ampintilie/Machine_Monitor
sudo cp -R /etc/zabbix/Machine_Monitor/external_scripts /etc/zabbix/external_scripts
sudo chmod +x /etc/zabbix/external_scripts/*
sudo systemctl restart zabbix-agent.service
sudo rm -rf /etc/zabbix/Machine_Monitor
