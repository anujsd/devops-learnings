# See just users
cut -d : -f1 /etc/passwd

# see groups
cut -d : -f1 /etc/group

# Current user
whoami

# Create new user
sudo useradd -m ram

sudo useradd -m -G admin ram

# Add it after words
sudo usermod -aG groupname username

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

# Format docker output
docker ps --format "{{.Image}} {{.ID}}"