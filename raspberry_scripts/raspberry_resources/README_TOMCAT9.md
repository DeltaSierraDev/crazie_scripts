## Apache Tomcat 9 Configuration

1. Add users for Tomcmcat
```bash
sudo nano /etc/tomcat9/tomcat-users.xml
```
[tomcat-user.xml example](tomcat-users.xml)
2. Server configuration
```bash
sudo nano /etc/tomcat9/server.xml
```
3. Connect frome another PC
```bash
sudo nano /usr/share/tomcat9-admin/host-manager/META-INF/context.xml
sudo nano /usr/share/tomcat9-admin/manager/META-INF/context.xml
```
4. webapps loaction
```bash
cd /var/lib/tomcat9/webapps/
```