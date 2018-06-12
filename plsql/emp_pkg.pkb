create or replace package body emp_pkg
is 
  procedure give_raise(p_empno in number
                      ,p_pct in number)
  is 
  begin
    -- Raise salary for empno by given percentage
    update emp
       set sal = round((sal * (p_pct/100) ) + sal,2)
     where empno = p_empno;
     
  end give_raise;
end;
/
