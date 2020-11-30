#!/bin/bash

# Raspbian CLI minimal version from Raspberry Pi Imager
# Default user: pi 
#         pass: raspberry

# Configure CLI (Optional)
# sudo dpkg-reconfigure console-setup

# Configure Raspberry Pi
# Setup Keyboard and Langugae, Networking, SSH, ...
# sudo raspi-config

# Alternative network configuration
# Example in root folder
# sudo nano /etc/wpa_supplicant/wpa_supplicant.conf

sudo apt-get update
sudo apt-get upgrade

# Envoirement
sudo apt-get install git
sudo apt-get install default-jdk

# Utility
sudo apt-get install ranger


# Apache Tomcat 9
sudo apt-get install tomcat9 tomcat9-common tomcat9-user tomcat9-docs tomcat9-examples 
# Add users
sudo nano /etc/tomcat9/tomcat-users.xml
# Server configuration
sudo nano /etc/tomcat9/server.xml
# Connect frome another PC
sudo nano /usr/share/tomcat9-admin/host-manager/META-INF/context.xml
sudo nano /usr/share/tomcat9-admin/manager/META-INF/context.xml
# webapps loaction
cd /var/lib/tomcat9/webapps/


# PostgreSQL
sudo apt install postgresql libpq-dev postgresql-client postgresql-client-common -y
# When that's complete, switch to the Postgres user to configure the database:
sudo su postgres
# Now you can create a database user. If you create a user with the same name as one of your Unix user accounts, 
# that user will automatically be granted access to the database. So, for the sake of simplicity in this tutorial, 
# I'll assume you're using the default pi user. Run the createuser command to continue:
createuser pi -P --interactive
# When prompted, enter a password (and remember what it is), select n for superuser, and y for the next two questions.
# Now connect to Postgres using the shell and create a test database:
$ psql
> create database test;
# Exit from the psql shell and again from the Postgres user by pressing Ctrl+D twice, and you'll be logged in as the pi user again. 
# Since you created a Postgres user called pi, you can access the Postgres shell from here with no credentials:
$ psql test
# You're now connected to the "test" database. The database is currently empty and contains no tables. You can create a simple table from the psql shell:
test=> create table people (name text, company text);
# Now you can insert data into the table:
test=> insert into people values ('Ben Nuttall', 'Raspberry Pi Foundation');
test=> insert into people values ('Rikki Endsley', 'Red Hat');
# And try a select query:
test=> select * from people;
# You might find it useful to use a graphical tool to access the database. PgAdmin is a full-featured PostgreSQL GUI 
# that allows you to create and manage databases and users, create and modify tables, write and execute queries, 
# and browse results in a more familiar view, similar to a spreadsheet. The psql command-line tool is fine for simple queries, 
# and you'll find many power users stick with it for speed (and because they don't need the assistance the GUI gives),0
# but midlevel users may find pgAdmin a more approachable way to learn and do more with a database.

# Another useful thing about pgAdmin is that you can either use it directly on the Pi or on another computer that's remotely connected to the database on the Pi.
# If you want to access it on the Raspberry Pi itself, you can just install it with apt:
sudo apt install pgadmin3
# It's exactly the same if you're on a Debian-based system like Ubuntu; if you're on another distribution, try the equivalent command for your system. 
# Alternatively, or if you're on Windows or macOS, try downloading pgAdmin from pgAdmin.org. Note that the version available in apt is pgAdmin3 and a newer version, 
# pgAdmin4, is available from the website.

# To connect to your database with pgAdmin on the same Raspberry Pi, simply open pgAdmin3 from the main menu, click the new connection icon, 
# and complete the registration fields. In this case, all you'll need is a name (you choose the connection name, e.g. test), 
# change the username to "pi," and leave the rest of the fields blank (or as they were). Click OK and you'll find a new connection in the side panel on the left.

# To connect to your Pi's database with pgAdmin from another computer, you'll first need to edit the PostgreSQL configuration to allow remote connections:
# 1. Edit the PostgreSQL config file /etc/postgresql/9.6/main/postgresql.conf to uncomment the listen_addresses line and change its value from localhost to *. Save and exit.
# 2. Edit the pg_hba config file /etc/postgresql/9.6/main/pg_hba.conf to change 127.0.0.1/32 to 0.0.0.0/0 for IPv4 and ::1/128 to ::/0 for IPv6. Save and exit.
# 3. Restart the PostgreSQL service: sudo service postgresql restart.