CREATE DATABASE keadb;
CREATE USER 'kea'@'localhost' IDENTIFIED BY '21%Default%12';
GRANT ALL ON keadb TO 'kea'@'localhost';
use keadb;
SOURCE path-to-kea/share/kea/scripts/mysql/dhcpdb_create.mysql
