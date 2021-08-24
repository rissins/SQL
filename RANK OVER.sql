SELECT empno
     , ename
     , sal
--     , RANK() OVER(ORDER BY sal) "RANK ASC"
     , RANK() OVER(ORDER BY sal DESC) "RANK DESC"
 FROM emp;
 

SELECT RANK('SMITH') WITHIN GROUP (ORDER BY ename) "RANK"
    FROM emp;
    

SELECT empno
     , ename
     , sal
     , deptno
     , RANK() OVER(PARTITION BY deptno ORDER BY sal desc)

  FROM emp;
--  ORDER BY deptno asc;
    