#! /bin/sh

# Learn from here
# https://github.com/KastroVKiran/ShellScriptingforDevOpsEngineering/blob/main/Lecture%206.txt#L404

# Memory ilization
mem_util=$(free -h | awk '/Mem:/ { printf("%.2f\n",$3/$2 * 100) }')

# Disk usage
disk_usage=$(df -h / | awk 'NR>1 { print $5+0 }')

# CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}')

echo "Mem: ${mem_util}, Disk: ${disk_usage}, CPU: ${cpu_usage}"


# Clean log folder
find . -type f -name "f*" -exec rm -f {} \;

# Tar file creation and unpacking
# -c => create
# -x => extract

tar -czf /destionation.tar.gz /log
tar -xzf destionation.tar.gz


