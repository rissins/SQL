DESC EMP;

-- EMP ����׸�ǥ��
SELECT * FROM EMP;

-- EMPNO, ENAME, JOB�� ���
SELECT EMPNO, ENAME, JOB FROM EMP;

-- DEPTNO���� �ߺ��Ǵ� �� ����
SELECT DISTINCT DEPTNO FROM EMP;

-- �� �÷����� ��Ī���̱�
SELECT  EMPNO "���" , ENAME AS "�����", JOB ����, DEPTNO AS �μ���ȣ FROM EMP;

--�ռ� �����ڸ� ��� 
SELECT ENAME || ' ������ ' ||  
       JOB ||'�̰�, �μ���ȣ��'|| 
       DEPTNO || '�̴�.' 
    FROM EMP;

--������ ���
SELECT ENAME
     , JOB
     , SAL 
     , SAL*12 YEARSAL 
    FROM EMP;

--Ư���ܾ� ���� �÷� ���
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
    
    



