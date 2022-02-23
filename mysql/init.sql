CREATE USER 'rails'@'%';
CREATE DATABASE activerecord_unittest DEFAULT CHARACTER SET utf8mb4;
CREATE DATABASE activerecord_unittest2 DEFAULT CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON activerecord_unittest.* TO 'rails'@'%';
GRANT ALL PRIVILEGES ON activerecord_unittest2.* TO 'rails'@'%';
GRANT ALL PRIVILEGES ON inexistent_activerecord_unittest.* TO 'rails'@'%';
