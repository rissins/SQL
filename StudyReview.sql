SELECT NAME
     , HEIGHT
     , SUBSTR(JUMIN,5,2)
 FROM student
 WHERE height >= 180;
 
SELECT name
     , grade
     , tel
     , INSTR(tel,'6')
 FROM student
 WHERE grade IN ('2', '4');
 
 
SELECT name
     , tel
     , SUBSTR(tel,INSTR(tel, ')')+1, (INSTR(tel, '-')-INSTR(tel, ')')-1))
 FROM student
 WHERE deptno1 = 101;
  
SELECT ename
     , job
     , replace(job, SUBSTR(job, 3, 1) , '?')
 FROM EMP
 WHERE deptno = 20;
 
 
SELECT ename
     , sal
     , comm
     , (sal*12) "Y_SAL"
     , TO_CHAR(((sal*12)+comm),'$99,999') TOTAL
     , TO_CHAR(((sal*12)+comm)+((sal*12)+comm)*0.05 , '$99,999') " 5% UP"
     , TO_CHAR(((sal*12)+comm)-((sal*12)+comm)*0.05, '$99,999') " 5% DOWN"
 FROM emp
 WHERE comm IS NOT NULL;
 
 SELECT name
      , hpage
      , replace(hpage, INSTR(hpage, '/', 1, 2), (INSTR(hpage, '.', 5, 1)+1 - INSTR(hpage, '/', 1, 2)), 'study')
 FROM professor
 WHERE hpage IS NOT NULL;