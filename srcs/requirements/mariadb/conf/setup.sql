CREATE DATABASE wordpress;

CREATE USER 'mhaddi'@'%' IDENTIFIED BY 'mhaddi';
CREATE USER 'mhaddi'@'localhost' IDENTIFIED BY 'mhaddi';
GRANT ALL PRIVILEGES ON wordpress.* TO 'mhaddi'@'%', 'mhaddi'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'simo'@'%' IDENTIFIED BY 'somecomplexpassword';
CREATE USER 'simo'@'localhost' IDENTIFIED BY 'somecomplexpassword';
GRANT ALL PRIVILEGES ON wordpress.* TO 'simo'@'%', 'simo'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
