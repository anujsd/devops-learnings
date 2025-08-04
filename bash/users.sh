# See just users
cut -d : -f1 /etc/passwd

# see groups
cut -d : -f1 /etc/group

# Current user
whoami

# Create new user
sudo useradd -m ram
# -m create home directory for user
# Creates /home/ram if it doesn't exist.
# Copies default config files from /etc/skel.
# Without -m, the user will exist, but no home directory will be created.




sudo useradd -m -G admin ram

# Add it after words
sudo usermod -aG groupname username
# -a: append (don't remove existing groups)
# -G: list of supplementary groups


# Set password
sudo passwd newuser

# Switch user
su - <user>

# Groups of current user
groups

# Create user without promting for password
USERNAME=sita
PASSWORD=Password@123

sudo useradd -m -s /bin/bash $USERNAME
echo "$USERNAME:$PASSWORD" | sudo chpasswd

# -s /bin/bash Set the user's default login shell to /bin/bash

# Format docker output
docker ps --format "{{.Image}} {{.ID}}"

# tee similar to > below
# But we can do sudo so it can write to sudo areas

echo "dfsdsdd" > file.txt

echo "dfsdsdd" | tee file.txt

echo "dfsdsdd" | tee -a file.txt

# -a: append instead of overriding

