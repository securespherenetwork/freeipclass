cat >>/etc/hosts<<EOF
172.16.16.100   freeipa.securespherenetwork.sec    freeipa
172.16.16.101   client1.securespherenetwork.sec    client1
172.16.16.102   client2.securespherenetwork.sec    client2
EOF

cd /etc/yum.repos .d/
sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
yum update -y