select name
     , tel
     , position
     , TO_CHAR(pay, '999,999,999')PAY
     , RANK() over(partition by SUBSTR(tel, 1, INSTR(TEL, ')')), POSITION ORDER BY PAY)"RANK"
  from emp2;
  select * from emp2;
  
select name
     , birthday
     , emp_type
     , to_char(pay, '999,999,999') "PAY"
     , to_char(sum(pay) over(partition by emp_type order by pay), '999,999,999')"TOTAL"
  from emp2;
  
  
select gname
     , jumin
     , to_char(point, '999,999') "POINT"
     , to_char(sum(point) over(partition by substr(jumin, 1,2) order by point desc), '999,999,999') "TOTAL"
     , round(point / sum(point) over(partition by substr(jumin, 1,2))* 100 , 2)"RATIO"
 from customer;
 
 select * from customer;