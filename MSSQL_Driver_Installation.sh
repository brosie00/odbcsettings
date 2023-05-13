Troubleshooting connection problems
If you're unable to make a connection to SQL Server using the ODBC driver, use the following information to identify the problem.

The most common connection problem is to have two copies of the UnixODBC driver manager installed. Search /usr for libodbc*.so*. If you see more than one version of the file, you (possibly) have more than one driver manager installed. Your application might use the wrong version.

Enable the connection log by editing your /etc/odbcinst.ini file to contain the following section with these items:

ini

Copy
[ODBC]
Trace = Yes
TraceFile = (path to log file, or /dev/stdout to output directly to the terminal)

sudo su



############################
Install the Microsoft ODBC driver for SQL Server (Linux)
#Download appropriate package for the OS version
#Choose only ONE of the following, corresponding to your OS version

#RHEL 7
curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo

#RHEL 8
curl https://packages.microsoft.com/config/rhel/8/prod.repo > /etc/yum.repos.d/mssql-release.repo

#RHEL 9
curl https://packages.microsoft.com/config/rhel/9.0/prod.repo > /etc/yum.repos.d/mssql-release.repo

exit
sudo yum remove unixODBC-utf16 unixODBC-utf16-devel #to avoid conflicts
sudo ACCEPT_EULA=Y yum install -y msodbcsql18
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y yum install -y mssql-tools18
echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo yum install -y unixODBC-devel


#######################################
Install the Microsoft ODBC driver for SQL Server (Linux RHEL 7)
############################

ODBC 13.1
The following sections explain how to install the Microsoft ODBC driver 13.1 from the bash shell for different Linux distributions.


sudo su
curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo
exit
sudo yum remove unixODBC-utf16 unixODBC-utf16-devel #to avoid conflicts
sudo ACCEPT_EULA=Y yum install msodbcsql
# optional: for bcp and sqlcmd
sudo ACCEPT_EULA=Y yum install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
# optional: for unixODBC development headers
sudo yum install unixODBC-devel

##########################################

sudo ACCEPT_EULA=Y yum install -y msodbcsql18
sudo ACCEPT_EULA=Y yum install -y msodbcsql17
#v 13.1 is the default for RHEL7
sudo ACCEPT_EULA=Y yum install msodbcsql