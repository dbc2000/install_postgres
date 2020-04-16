#!/bin/sh

echo "Enter the PostgreSQL version to be uninstalled: (9.4/9.5/9.6/9.6/10/11/12) :"
read pg_version
echo $pg_version

if [ $pg_version = "9.4" ]
then
yum remove postgresql94 postgresql94-server postgresql94-contrib postgresql94-libs
rm -rf /var/lib/pgsql/9.4
rm -rf /usr/pgsql-9.4
fi

if [ $pg_version = "9.5" ]
then
yum remove postgresql95 postgresql95-server postgresql95-contrib postgresql95-libs
rm -rf /var/lib/pgsql/9.5
rm -rf /usr/pgsql-9.5
fi

if [ $pg_version = "9.6" ]
then
yum remove postgresql96 postgresql96-server postgresql96-contrib postgresql96-libs
rm -rf /var/lib/pgsql/9.6
rm -rf /usr/pgsql-9.6
fi

if [ $pg_version = "10" ]
then
yum remove postgresql10 postgresql10-server postgresql10-contrib postgresql10-libs
rm -rf /var/lib/pgsql/10
rm -rf /usr/pgsql-10
fi

if [ $pg_version = "11" ]
then
yum remove postgresql11 postgresql11-server postgresql11-contrib postgresql11-libs
rm -rf /var/lib/pgsql/11
rm -rf /usr/pgsql-11
fi

if [ $pg_version = "12" ]
then
yum remove postgresql12 postgresql12-server postgresql12-contrib postgresql12-libs
rm -rf /var/lib/pgsql/12
rm -rf /usr/pgsql-12
fi
