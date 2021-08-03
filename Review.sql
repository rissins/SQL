DESC EMP;

-- EMP 모든항목표시
SELECT * FROM EMP;

-- EMPNO, ENAME, JOB만 출력
SELECT EMPNO, ENAME, JOB FROM EMP;

-- DEPTNO에서 중복되는 것 제외
SELECT DISTINCT DEPTNO FROM EMP;

-- 각 컬럼마다 별칭붙이기
SELECT  EMPNO "사번" , ENAME AS "사원명", JOB 직업, DEPTNO AS 부서번호 FROM EMP;

--합성 연산자를 사용 
SELECT ENAME || ' 직업은 ' ||  
       JOB ||'이고, 부서번호는'|| 
       DEPTNO || '이다.' 
    FROM EMP;

--연산자 사용
SELECT ENAME
     , JOB
     , SAL 
     , SAL*12 YEARSAL 
    FROM EMP;

--특정단어 포함 컬럼 출력
SELECT NAME
      ,ID
      ,STUDNO
    FROM STUDENT
    WHERE NAME 
    LIKE '%Bi%'


SELECT DEPTNO
    FROM PROFESSOR
INTERSECT
SELECT DEPTNO
    FROM DEPARTMENT
MINUS
SELECT DEPTNO1
    FROM STUDENT
    
    



