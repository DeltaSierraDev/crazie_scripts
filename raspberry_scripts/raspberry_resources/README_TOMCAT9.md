## Apache Tomcat 9 Configuration

### 1. User configuration
```bash
sudo nano /etc/tomcat9/tomcat-users.xml
```
    Add roles and users. [tomcat-user.xml example](tomcat-users.xml) for testing purposes only, change usenames and passwords after testing.

### 2. Server configuration
```bash
sudo nano /etc/tomcat9/server.xml
```
    Change port to 80 to remove port numer extension in the tomcat serer URL. (Optional) [server.xml example](server.xml)

### 3. Web application contexts configuration
```bash
sudo nano /usr/share/tomcat9-admin/host-manager/META-INF/context.xml
sudo nano /usr/share/tomcat9-admin/manager/META-INF/context.xml
```
    Change Valve tag preoperty Allow to Allow ".*" for testing purposes only. This will enable everyone in the network to access the manager web app. Use regular expressions to define which IP Addresses can access manager app. [context.xml example](context.xml)

### 4. Web application folder loaction

    Place war file here to deploy the applications.

```bash
cd /var/lib/tomcat9/webapps/
```

    Location of tomcat managment web applications. Listed as tomcat9, tomcat9-admin, ...

```bash
cd /usr/share/
```