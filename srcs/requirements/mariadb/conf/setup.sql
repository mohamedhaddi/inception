CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER 'mhaddi'@'localhost';
SET PASSWORD FOR 'mhaddi'@'localhost' = PASSWORD('mhaddi');
GRANT ALL PRIVILEGES ON wordpress.* TO 'mhaddi'@'localhost' IDENTIFIED BY 'mhaddi';
GRANT ALL ON wordpress.* to 'mhaddi'@'%' IDENTIFIED BY 'mhaddi';

FLUSH PRIVILEGES;

CREATE USER 'superuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'superuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'newpass';
flush privileges;