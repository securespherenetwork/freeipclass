hostnamectl 

hostnamectl set-hostname client2.securespherenetwork.sec

timedatectl list-timezones

timedatectl status

timedatectl set-timezone Africa/Lagos

# Installation
#==============
yum -y install freeipa-client ipa-admintools

# Configudration (Joining)

ipa-client-install --hostname=`hostname -f` --mkhomedir --server=freeipa.securespherenetwork.sec  --domain securespherenetwork.sec --realm SECURESPHERENETWORK.SEC