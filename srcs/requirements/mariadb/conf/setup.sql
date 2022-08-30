ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';
CREATE DATABASE wordpress;
CREATE USER 'mhaddi'@'localhost' IDENTIFIED BY 'mhaddi';
GRANT ALL ON wordpress.* TO 'mhaddi'@'localhost' IDENTIFIED BY 'mhaddi';
GRANT ALL ON wordpress.* to 'mhaddi'@'%' IDENTIFIED BY 'mhaddi';
FLUSH PRIVILEGES;