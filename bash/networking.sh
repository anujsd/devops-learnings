# ip address of machine
ip address show eth0 | awk '$1=="inet" {print $2}' | cut -d/ -f1

# cut
# -d => delimiter /
# f1 => first part

# Get command status code
curl -I <domain>
curl -L <domain>
curl -X POST <domain>
# -I only header
# -L follow redirect
# -X POST/PATCH etc

# Check port open on remote server
telnet <ip> 80

# Ping 3 times
ping -c 3 google.com

# Trace route to dns
traceroute google.com

# show listening ports
netstat -tuln

# dns look up
dig google.com
