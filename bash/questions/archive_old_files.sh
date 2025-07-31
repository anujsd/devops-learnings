#!/bin/sh

# compress log files older than 7 days
find /var/log -name "*.log" -type f -mtime +7 -exec gzip {} \;

# compress log files older than 1 min
find /var/log -name "*.log" -type f -mmin +1 -exec gzip {} \;
