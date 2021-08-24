SELECT studno
     , name
     , birthday
  FROM student
 WHERE TO_CHAR(birthday, 'MM') = 01;
 
 
 
SELECT empno
     , ename
     , hiredate
  FROM emp
WHERE TO_CHAR(hiredate, 'MM') = 01
   OR TO_CHAR(hiredate, 'MM') = 02
   OR TO_CHAR(hiredate, 'MM') = 03;
   
   
SELECT empno
     , ename
     , sal
     , comm
     , TO_CHAR((sal*12)+comm, '99,999') 
  FROM emp;
  
  
SELECT name
     , pay
     , bonus
     , TO_CHAR((pay*12)+bonus, '99,999')
  FROM professor
  WHERE deptno = 201;
  

SELECT empno
     , ename
     , hiredate
     ,TO_CHAR((sal*12)+comm, '$999,999')
     , TO_CHAR(((sal*12)+comm)*1.15, '$999,999')
  FROM emp
  WHERE comm IS NOT NULL;
  
SELECT profno
     , name
     , pay
     , NVL(bonus, 0)
     , TO_CHAR((pay*12) + NVL(bonus,0), '99,999') TOTAL
  FROM professor
  WHERE deptno = 201;
  
  
  
SELECT empno
     , Ename
     , sal
     , comm
     , NVL2(COMM, SAL+COMM, SAL*0) "NVL2"
  FROM EMP
  WHERE deptno = 30;  
  
SELECT empno
     , Ename
     , comm
     , NVL2(COMM, 'Exit', 'NULL') "NVL2"
  FROM EMP
  WHERE deptno = 30;  
  