SELECT COUNT(*)
     , COUNT(comm)
     , SUM(comm)
     , AVG(comm)
     , AVG(NVL(comm, 0))
 FROM emp;
 
SELECT MAX(sal)
     , MIN(sal)
     , STDDEV(sal)
     , VARIANCE(sal)
 FROM emp;
 
 
SELECT deptno
     , AVG (NVL(sal, 0)) 
 FROM emp
 GROUP by deptno;
 
 
SELECT deptno
     , ROUND(AVG(NVL(sal, 0)), 2)
 FROM emp
 GROUP BY deptno
 HAVING AVG(NVL(sal, 0))> 2000;
 
 
SELECT MAX(sal+NVL(comm,0))
     , MIN(sal+NVL(comm,0))
     , ROUND(AVG(sal+NVL(comm,0)), 1)
 FROM emp;
 
SELECT COUNT(*) || 'EA' "TOTAL"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '01', 1)) || 'EA' "JAN"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '02', 1)) || 'EA' "FEB"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '03', 1)) || 'EA' "MAR"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '04', 1)) || 'EA' "APR"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '05', 1)) || 'EA' "MAY"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '06', 1)) || 'EA' "JUN"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '07', 1)) || 'EA' "JUL"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '08', 1)) || 'EA' "AUG"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '09', 1)) || 'EA' "SEP"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '10', 1)) || 'EA' "OCT"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '11', 1)) || 'EA' "NOV"
     , COUNT(DECODE(TO_CHAR(birthday, 'MM'), '12', 1)) || 'EA' "DEC"
 FROM student;


SELECT MIN(DECODE (day, 'SUN', dayno))SUN
     , MIN(DECODE (day, 'MON', dayno))MON
     , MIN(DECODE (day, 'TUE', dayno))TUE
     , MIN(DECODE (day, 'WED', dayno))WED
     , MIN(DECODE (day, 'THU', dayno))THU
     , MIN(DECODE (day, 'FRI', dayno))FRI
     , MIN(DECODE (day, 'SAT', dayno))SUN
     