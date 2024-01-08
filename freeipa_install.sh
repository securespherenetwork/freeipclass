hostnamectl 

hostnamectl set-hostname freeipa.securespherenetwork.sec

timedatectl list-timezones

timedatectl status

timedatectl set-timezone Africa/Lagos


dnf module enable idm:DL1

dnf install ipa-server ipa-server-dns -y

ipa-server-install --setup-dns


firewall-cmd --permanent --add-service=ntp
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-service=ldap
firewall-cmd --permanent --add-service=ldaps
firewall-cmd --permanent --add-service=kerberos
firewall-cmd --permanent --add-service=kpasswd
firewall-cmd --reload