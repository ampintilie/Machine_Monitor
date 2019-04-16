# Get date from now
# Get date from when the service is in active state
# Transform these date in seconds and substract to get the uptime
service=$1
active_date=$(systemctl show $service -p ActiveEnterTimestamp --value)
now_date=$(date -d now +%s)
expr $now_date - $(date -d "$active_date" +%s)
