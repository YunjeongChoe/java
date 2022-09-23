-- system 계정으로 실행
create TABLESPACE jdbcts
datafile '/u01/app/oracle/oradata/XE/jdbcts.dbf'
size 100M autoextend on next 5M;

create user jdbc identified by jdbc
default TABLESPACE jdbcts
temporary TABLESPACE temp;

GRANT connect, resource to jdbc;
