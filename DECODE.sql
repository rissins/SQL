SELECT deptno
     , name
     , decode(deptno, 101, 'Compuer Engineering') DNAME
  FROM professor;
  
SELECT deptno
     , name
     , decode(deptno, 101, 'Compuer Engineering', 'etc') DNAME
  FROM professor;  
  

SELECT deptno
     , name
     , decode(deptno, 101, 'Computer Engineering', 102, 'Multimedia Enginerring', 'etc') DNAME
  FROM professor;    
    
SELECT deptno
     , name
     , DECODE(deptno, 101, DECODE(name, 'Audie Murphy','Best!  ')) ETC
  FROM professor;   
  
SELECT deptno
     , name
     , DECODE(deptno, 101, DECODE(name, 'Audie Murphy','Best!', 'GOOD!')) ETC
  FROM professor;     
  
  
SELECT deptno
     , name
     , DECODE(deptno, 101, DECODE(name, 'Audie Murphy','Best!', 'GOOD!'), 'N/A') ETC
  FROM professor;    
  
  
SELECT name
     , jumin
     , DECODE(SUBSTR(JUMIN,7,1),'1','man','2','woman') "Gender"
  FROM student
  WHERE deptno1 = 101;
  
  
SELECT name
     , tel
     , DECODE(SUBSTR(TEL,1,3),'02)','SEOUL'
                             ,'031','GYEONGGI'
                             , '051','BUSAN'
                             ,'052','ULSAN'
                             ,'055','GYEONGNAM'
                             ) "LOC"
  FROM STUDENT
  WHERE deptno1 = 101;
  
select *from student;  