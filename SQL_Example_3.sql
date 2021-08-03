SELECT name
     , tel
     , INSTR(tel, ')' )
    FROM student
    WHERE deptno1 = 201;


SELECT name
     , tel
     , RTRIM(SUBSTR(TEL,1,3), ')') "AREA CODE"
    FROM student
    WHERE deptno1 = 201;
    
  
 SELECT LPAD(ename,9, '12345') LPAD
    FROM EMP
    WHERE DEPTNO = 10;
    
    
 SELECT RPAD(ename,10, '-') RPAD
    FROM EMP
    WHERE DEPTNO = 10;
        
SELECT RPAD(ename, 9, SUBSTR('123456789', LENGTH(ENAME)+1)) "RPAD"
    FROM EMP
    WHERE DEPTNO = 10;
    
    
SELECT ENAME
     , LTRIM(ENAME, 'C')
     , RTRIM(ENAME, 'R')
     , REPLACE(ENAME, SUBSTR(ENAME, 1, 2), '**')
 FROM  EMP
 WHERE DEPTNO = 10;
 
 
 SELECT ENAME
      , REPLACE(ENAME, SUBSTR(ENAME, 2, 3), '--')
 FROM   EMP
 WHERE  DEPTNO = 20;
 
 
 SELECT NAME
      , JUMIN
      , REPLACE(JUMIN, SUBSTR(JUMIN, 7, 7), '-/-/-/-')
 FROM   STUDENT
 WHERE  DEPTNO1 = 101;
      

SELECT NAME
     , TEL
     , REPLACE(TEL, SUBSTR(TEL, INSTR(TEL, ')')+1, 3), '***')
 FROM  STUDENT
 WHERE DEPTNO1 = 102;
  
