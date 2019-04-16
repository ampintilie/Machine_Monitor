#!/bin/bash
juju scp add_machine_monitor.sh $1:/home/ubuntu
juju run --machine $1 "chmod +x /home/ubuntu/add_machine_monitor.sh"
juju run --machine $1 "~/add_machine_monitor.sh"
