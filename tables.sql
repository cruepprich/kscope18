create table emp 
  ( 
     empno     number(4, 0) not null enable 
     ,ename    varchar2(10 byte) 
     ,job      varchar2(9 byte) 
     ,mgr      number(4, 0) 
     ,hiredate date 
     ,sal      number(7, 2) 
     ,comm     number(7, 2) 
     ,deptno   number(2, 0), 
     primary key (empno) 
  ) 
  ;