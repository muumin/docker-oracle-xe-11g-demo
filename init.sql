create role test_role;
grant create any table, alter any table, drop any table,
  insert any table, update any table, delete any table,
  create any index, alter any index, drop any index,
  create any sequence, alter any sequence, drop any sequence, select any sequence,
  create any view, drop any view
  to test_role;

create tablespace testdb datafile '/u01/app/oracle/oradata/XE/testdb.dbf' size 300m autoextend on next 1m maxsize unlimited extent management local;
create user test identified by test default tablespace testdb temporary tablespace temp;
grant connect, resource to test;
alter user test quota unlimited on testdb;
grant test_role to test;
