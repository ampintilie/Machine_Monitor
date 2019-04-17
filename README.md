# Machine_Monitor

1. Run 'juju_cmd_machine.sh' for every machine you want to monitor. The script takes 1 parameter(id of machine). This will run 'add_machine_monitor.sh' and send the files needed on machine.

2. Run 'extend_zabbix.sh' for add needed parameter in 'userparameter_mysql.conf'. The script takes 2 parameters(first machine id and last machine id)

3. Run 'seed_zabbix_conf.sh' for modifing parameter in zabbix agent config. The script takes 1 parameter(id of machine).

4. Add new discovery item, items prototype, triggers prototype to exiting templates.
