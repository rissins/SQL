SELECT ENAME
      ,EPTNO 
      ,SAL
  FROM emp
  WHERE SAL >= 1000
  AND deptno = 20;
  
  
  SELECT ENAME
      ,job
      ,SAL
  FROM emp
  WHERE SAL <= 3000
  AND sal >= 2000;
  
SELECT ename
      ,job
      ,empno
  FROM emp
 WHERE ename
 LIKE  'JA%';
 

SELECT ename
      ,job
      ,deptno
  FROM emp
WHERE comm is null;

SELECT ename
      ,deptno
      ,sal
      ,sal*12
  FROM emp
 ORDER BY deptno DESC, 
        sal*12 ASC;
        
        
SELECT ename
      ,sal
      ,comm
  FROM emp
 WHERE (sal >= 1000 AND comm > 0)
 OR sal >= 3000;
     