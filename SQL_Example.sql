-- PAY ��������
SELECT NAME
      ,PAY
      ,DEPTNO
    FROM PROFESSOR
ORDER BY PAY DESC;


--DEPTNO ��������, ���� ��������
SELECT PROFNO
     , NAME
     , PAY
     , PAY*12 "����"
     , DEPTNO
    FROM PROFESSOR
ORDER BY DEPTNO DESC, ���� ASC;


-- WHERE ���ǹ� ����Ͽ� ���
SELECT NAME
      ,PAY
      ,BONUS
    FROM professor
    WHERE (PAY >= 300 AND BONUS IS NOT NULL) OR PAY >= 450;


SELECT NAME
      ,STUDNO �л���ȣ
    FROM STUDENT
    WHERE DEPTNO1 = 201
UNION ALL
SELECT NAME
      ,PROFNO ������ȣ
    FROM PROFESSOR
    WHERE DEPTNO = 201;