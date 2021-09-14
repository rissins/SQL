SELECT * FROM fruit;

SELECT SUM(DECODE(name, 'apple', price)) "APPLE"
     , SUM(DECODE(name, 'grape', price)) "grape"
     , SUM(DECODE(name, 'orange', price)) "orange"
FROM fruit;


SELECT * FROM STUDENT;

SELECT COUNT(NAME) || 'EA (' || (COUNT(*) / COUNT(*) * 100) || '%)' "TOTAL"
     , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '02', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '02', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "SEOUL"
     , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '031', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '031', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "GYEONGGI" 
      , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '051', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '051', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "BUSAN" 
      , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '052', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '052', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "ULSAN" 
      , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '053', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '053', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "DAEGU"
      , COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '055', 'SEOUL' ) ) || 'EA (' ||
      (COUNT(DECODE(SUBSTR(TEL, 1, INSTR(TEL, ')', 1, 1) -1), '055', 'SEOUL' ) ) / COUNT(NAME) * 100 ) || '%)' "GYEONGNAM" 
 FROM STUDENT;
 
 

SELECT deptno
     , ename
     , sal
     , SUM(SAL) OVER(PARTITION BY DEPTNO ORDER BY SAL)
 FROM EMP
 ORDER BY DEPTNO;
 
 
SELECT DEPTNO
     , ENAME
     , SUM(SAL) OVER() "TOTAL_SAL"
     , ROUND(SAL / SUM(SAL) OVER() * 100, 2) 
  FROM EMP  
  ORDER BY SAL DESC;
  
SELECT DEPTNO
     , ENAME
     , SUM(SAL) OVER() "TOTAL_SAL"
     , ROUND(SAL / SUM(SAL) OVER() * 100, 2) 
  FROM EMP  
  ORDER BY SAL DESC;
  
  
  
SELECT DEPTNO
     , ENAME
     , SAL
     , ROUND(SAL / SUM(SAL) OVER(PARTITION BY DEPTNO) * 100, 2) "%"
  FROM EMP  
  ORDER BY DEPTNO ;  
  
SELECT L_DATE ��������
     , L_CODE ���������ڵ�
     , L_QTY ����Ǽ�
     , L_TOTAL �����Ѿ�
     ,SUM(L_TOTAL) OVER(ORDER BY L_DATE) ��������ݾ�
 FROM LOAN
 WHERE L_STORE = 1000;
 
SELECT L_CODE ���������ڵ�
     , L_STORE ��������
     , L_DATE ��������
     , L_QTY ����Ǽ�
     , L_TOTAL �����Ѿ�
     , SUM(L_TOTAL) OVER(PARTITION BY L_CODE, L_STORE ORDER BY L_TOTAL) ��������ݾ�
 FROM LOAN;
 
SELECT L_DATE ��������
     , L_CODE ���������ڵ�
     , L_QTY ����Ǽ�
     , L_TOTAL �����Ѿ�
     ,SUM(L_TOTAL) OVER(PARTITION BY L_CODE ORDER BY L_DATE) ��������ݾ�
 FROM LOAN
 WHERE L_STORE = 1000; 



 SELECT * FROM LOAN;
 
SELECT DEPTNO
     , NAME
     , PAY
     , SUM(PAY) OVER()
     , ROUND(SUM(PAY) OVER(PARTITION BY NAME ORDER BY PAY) / SUM(PAY) OVER() *100 , 2)
 FROM PROFESSOR
 ORDER BY PAY DESC;
 
 
SELECT DEPTNO
     , NAME
     , PAY
     , SUM(PAY) OVER(PARTITION BY DEPTNO)
     , ROUND(PAY/SUM(PAY) OVER(PARTITION BY DEPTNO) * 100, 2) "RATIO(%)"
 FROM PROFESSOR;


CREATE TABLE EMP01
AS 
SELECT * FROM EMP;

SELECT * FROM EMP01;

SELECT COUNT(*)
  FROM EMP01;
  
INSERT INTO EMP01
SELECT * FROM EMP01;

INSERT INTO EMP01(EMPNO, ENAME)
VALUES(111,'AAA');

COMMIT;

SELECT EMPNO, ENAME
  FROM EMP01
  WHERE ENAME = 'AAA';
--0.72
CREATE INDEX INDEX_EMP01_ENAME
ON EMP01 (ENAME);

SELECT *
  FROM EMP;
  
