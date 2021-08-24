SELECT dname
    , LPAD(dname, 9, 12345) "LPAD"
    , loc
    , RPAD(loc, 9, substr('123456789', length(loc) +1)) "RPAD"
 FROM dept;
 
 
SELECT gname
     , jumin
     , REPLACE(gname,SUBSTR(gname, 4, 3), 337)
 FROM customer
 WHERE SUBSTR(jumin,1,2) < 77;
 
SELECT name
     , hpage
     , REPLACE(hpage,SUBSTR(hpage,INSTR(hpage,'.',1,2)+1,2),'OK') "OK"
 FROM professor
 WHERE hpage IS NOT NULL;
 
 
SELECT name
     , hiredate
  FROM professor
WHERE TO_CHAR(hiredate, 'MM') IN ('03', '08', '10');


SELECT name
     , TO_CHAR(hiredate, 'YYYY-MM-DD') "HIREDATE"
     , pay
     , bonus
     , TO_CHAR(pay*12+bonus, '$99,999') "TOTAL"
     , TO_CHAR(pay*12+bonus - ((pay*12)+bonus)*0.1, '$99,999')  "10% DOWN"
     , TO_CHAR((((pay*12)+bonus) - ((pay*12)+bonus)*0.1) * 1200, '9,999,999') "WON"
 FROM professor
 WHERE bonus IS NOT NULL;
 
 
SELECT ename
     , sal
     , NVL(comm, 0)
     , TO_CHAR((SAL*12+NVL(comm, 0)), '99,999') "TOTAL"
 FROM emp
 WHERE deptno = 30;
 

SELECT name
     , tel
     , REPLACE(tel,SUBSTR(tel,INSTR(tel, ')')+1, (INSTR(tel, '-')-1) - (INSTR(tel,')'))), '***')
  FROM emp2;
  
SELECT name
     , pay
     , CASE WHEN pay BETWEEN 1 AND 300 THEN 'GRADE1'
            WHEN pay BETWEEN 301 AND 400 THEN 'GRADE2'
            WHEN pay BETWEEN 401 AND 500 THEN 'GRADE3'
            ELSE 'GRADE4'
        END "GRADE"
  FROM professor
ORDER BY pay desc;
  
  
  