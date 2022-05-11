#!/bin/bash

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/postgres_install_log.out 2>&1
#Explanation:
#exec 3>&1 4>&2
#Saves file descriptors so they can be restored to whatever they were before redirection or used themselves to output to whatever they were before the following redirect.
#trap 'exec 2>&4 1>&3' 0 1 2 3
#Restore file descriptors for particular signals. Not generally necessary since they should be restored when the sub-shell exits.
#exec 1>log.out 2>&1
#Redirect stdout to file log.out then redirect stderr to stdout. Note that the order is important when you want them going to the same file. stdout must be redirected before stderr is redirected to stdout.

echo "sudo apt -y install curl ca-certificates gnupg"
sudo apt -y install curl ca-certificates gnupg


echo "curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null"
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null


echo "sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'


echo "sudo apt update"
sudo apt update


echo "sudo apt -y install postgresql-14 postgresql-contrib-14"
sudo apt -y install postgresql-14 postgresql-contrib-14


echo "cd /etc/init.d"
cd /etc/init.d


echo "sudo sh postgresql start"
sudo sh postgresql start



#Set password for postgres user
echo "sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'admin'""
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'admin'"


#Create Table employee
echo sudo -u postgres psql -c "CREATE TABLE IF NOT EXISTS public.employee ("Name" character varying COLLATE pg_catalog."default","EmpId" bigint NOT NULL DEFAULT 1, "Address" character varying COLLATE pg_catalog."default",CONSTRAINT employee_pkey PRIMARY KEY ("EmpId"))"
sudo -u postgres psql -c "CREATE TABLE IF NOT EXISTS public.employee ("Name" character varying COLLATE pg_catalog."default","EmpId" bigint NOT NULL DEFAULT 1, "Address" character varying COLLATE pg_catalog."default",CONSTRAINT employee_pkey PRIMARY KEY ("EmpId"))"


