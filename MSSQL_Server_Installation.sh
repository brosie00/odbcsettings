systemctl start mssql-server

####################

sudo curl -o /etc/yum.repos.d/mssql-server.repo https://packages.microsoft.com/config/rhel/8/mssql-server-2022.repo

sudo yum install -y mssql-server

sudo /opt/mssql/bin/mssql-conf setup

systemctl status mssql-server

sudo firewall-cmd --zone=public --add-port=1433/tcp --permanent
sudo firewall-cmd --reload

sudo curl -o /etc/yum.repos.d/msprod.repo https://packages.microsoft.com/config/rhel/8/prod.repo

sudo yum remove unixODBC-utf16 unixODBC-utf16-devel

sudo yum install -y mssql-tools unixODBC-devel

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile

echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc


sqlcmd -S localhost -U sa -P '<YourPassword>'







https://learn.microsoft.com/en-us/sql/linux/sql-server-linux-setup?view=sql-server-ver16

CREATE TABLE dbo.Inventory (
   id INT, name NVARCHAR(50),
   quantity INT
);
GO 

Insert data into the new table:

SQL

INSERT INTO dbo.Inventory VALUES (1, 'banana', 150);
INSERT INTO dbo.Inventory VALUES (2, 'orange', 154);

GO 

SQL


GO