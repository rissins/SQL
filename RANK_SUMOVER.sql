SELECT * FROM NEW_EMP2;

TRUNCATE TABLE new_emp2;

rollback;

drop table new_emp2;


CREATE TABLE T_VALIDATE2
AS
SELECT * FROM T_VALIDATE;

SELECT * FROM T_VALIDATE2;

DELETE FROM T_VALIDATE2;

-----


SELECT empno
     , ename
     , sal
     , deptno
     , JOB
     , RANK() OVER(PARTITION BY DEPTNO, JOB ORDER BY SAL desc)
  FROM emp;

SELECT empno
     , ename
     , sal
     , RANK() OVER(ORDER BY SAL DESC) AS "RANK"
     , DENSE_RANK() OVER(ORDER BY SAL DESC) AS "DENSE_RANK"
     , ROW_NUMBER() OVER(ORDER BY SAL DESC) AS "ROW_NUMBER"
  FROM emp;
  
  
SELECT P_DATE
     , P_CODE
     , P_QTY
     , P_TOTAL
     , SUM(p_total) OVER(ORDER BY p_total) TOTAL
FROM PANMAE
WHERE p_store = 1000;


SELECT P_DATE
     , P_CODE
     , P_QTY
     , P_TOTAL
     , SUM(p_total) OVER(PARTITION BY p_code, p_code ORDER BY p_total) TOTAL
FROM PANMAE
WHERE p_store = 1000;


SELECT P_DATE
     , P_STORE
     , P_CODE
     , P_QTY
     , P_TOTAL
     , SUM(p_total) OVER(PARTITION BY p_code, p_STORE ORDER BY p_total) TOTAL
FROM PANMAE;


SELECT p_code
     , p_store
     , p_qty
     , sum(p_qty) over() TOTL
--     , ROUND( p_qty/sum(p_qty) over()*100, 2)
     , ROUND(RATIO_TO_REPORT(SUM(p_qty)) OVER()*100, 2) "QTY_%"
  FROM panmae
  WHERE p_code = 100
  GROUP BY p_code, p_store, p_qty;
     
select * from panmae;

SELECT deptno
     , ename
     , sal
     , SUM(sal) OVER(order by sal) TOTAL
  FROM emp;
  
 