create or replace package emp_pkg
is 
  g_comp_flag constant varchar2(1) := 'a';
  
  
  procedure give_raise(p_empno in number
                      ,p_pct in number);
end;
/