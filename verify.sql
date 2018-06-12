set echo off
spool verify.log
prompt emp records:
select count(*) from emp;

prompt invalid objects:
select object_name,object_type
  from user_objects
 where status != 'VALID';

spool off