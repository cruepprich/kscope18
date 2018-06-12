create or replace package body test_emp_pkg
is
  function give_raise
  return varchar2
  is
  l_empno        number := 7788;
  l_sal_orig     number;
  l_pct_raise    number := 10;
  l_sal_expected number;
  l_sal_new      number;
  begin
    select sal into l_sal_orig
      from emp 
     where empno = l_empno;

    l_sal_expected := round((l_sal_orig * (l_pct_raise/100) ) + l_sal_orig + 1,2);

    emp_pkg.give_raise(l_empno,l_pct_raise);

    select sal into l_sal_new
      from emp 
     where empno = l_empno;

    if l_sal_new = l_sal_expected then
      return 'OK';
    else
      return 'FAIL';
    end if;

  end give_raise;

end;
/
