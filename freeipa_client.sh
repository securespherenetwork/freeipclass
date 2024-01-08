hostnamectl 

hostnamectl set-hostname client1.securespherenetwork.sec

timedatectl list-timezones

timedatectl status

timedatectl set-timezone Africa/Lagos


ipa-client-install --hostname=`hostname -f` --mkhomedir --server=freeipa.securespherenetwork.sec  --domain securespherenetwork.sec --realm SECURESPHERENETWORK.SEC