# See process
ps -aux

# -a: show processes for all users
# -u: display process details like user, CPU, memory
# -x: show processes not attached to a terminal (e.g., background services, daemons)

# See tree of process who is launching who
pstree -p # -p => for pids

# Kill process

kill -9 <PID>     # Force kill (SIGKILL)
kill -15 <PID>    # Graceful termination (SIGTERM)

# Find process running on specific port
lsof -i :8080

# Memory 
top -n1 # n1 one iteration

free -h # -h human readable

# CPU
top -n1

# Disk space
df -h /

