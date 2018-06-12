set feedback off echo off
spool test_results.log

--prompt Test emp_pkg.give_raise
set serveroutput on
declare
  l_result varchar2(255);
begin
  l_result := test_emp_pkg.give_raise;
  dbms_output.put_line(l_result);
end;
/
spool off
