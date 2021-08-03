SELECT ename
    ,  deptno
    ,  INITCAP( ename)
    FROM EMP
    WHERE DEPTNO = 10;

SELECT name
    ,  LOWER(name)
    ,  UPPER(name)
    FROM PROFESSOR;

SELECT job
     , SUBSTR(job, 1, 2)
     , SUBSTR(job, 0, 2)
    FROM EMP;

SELECT ename
    ,  job
    ,  CONCAT(ename, job)
    ,  ename || job
    FROM EMP
    WHERE DEPTNO = 10;




