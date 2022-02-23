CREATE USER rails WITH SUPERUSER encrypted password 'rails';
CREATE DATABASE activerecord_unittest;
CREATE DATABASE activerecord_unittest2;
GRANT ALL PRIVILEGES ON DATABASE activerecord_unittest TO rails;
GRANT ALL PRIVILEGES ON DATABASE activerecord_unittest2 TO rails;
