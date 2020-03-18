#!/bin/sh

echo "Veuillez saisir la version de PostgreSQL a installée (9.4/9.5/9.6/9.6/10/11/12) :"
read pg_version
echo $pg_version

if [ $pg_version = "9.4" ]
then
yum install https://download.postgresql.org/pub/repos/yum/9.4/redhat/rhel-7-x86_64/pgdg-centos94-9.4-3.noarch.rpm
yum install postgresql94 postgresql94-server postgresql94-contrib
/usr/pgsql-9.4/bin/postgresql94-setup initdb
systemctl enable postgresql-94
systemctl start postgresql-94
fi


if [ $pg_version = "9.5" ]
then
yum install https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-7-x86_64/pgdg-centos95-9.5-3.noarch.rpm
yum install postgresql95 postgresql95-server postgresql95-contrib
/usr/pgsql-9.5/bin/postgresql95-setup initdb
systemctl enable postgresql-95
systemctl start postgresql-95
fi


if [ $pg_version = "9.6" ]
then
yum install https://download.postgresql.org/pub/repos/yum/9.6/redhat/rhel-7-x86_64/pgdg-redhat96-9.6-3.noarch.rpm
yum install postgresql96 postgresql96-server postgresql96-contrib
/usr/pgsql-9.6/bin/postgresql96-setup initdb
systemctl enable postgresql-96
systemctl start postgresql-96
fi

if [ $pg_version = "10" ]
then
yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm
yum install postgresql10 postgresql10-server postgresql10-contrib
/usr/pgsql-10/bin/postgresql-10-setup initdb
systemctl enable postgresql-10
systemctl start postgresql-10
fi

if [ $pg_version = "11" ]
then
yum install https://download.postgresql.org/pub/repos/yum/11/redhat/rhel-7-x86_64/pgdg-centos11-11-2.noarch.rpm
yum install postgresql11 postgresql11-server postgresql11-contrib
/usr/pgsql-11/bin/postgresql-11-setup initdb
systemctl enable postgresql-11
systemctl start postgresql-11
fi

if [ $pg_version = "12" ]
then
yum install https://download.postgresql.org/pub/repos/yum/12/redhat/rhel-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm
yum install postgresql12 postgresql12-server postgresql12-contrib
/usr/pgsql-12/bin/postgresql-12-setup initdb
systemctl enable postgresql-12
systemctl start postgresql-12
fi
