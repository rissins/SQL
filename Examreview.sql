SELECT name
     , SUBSTR(jumin, 3,2)
     , an_key_dap
 FROM member
 WHERE an_key_dap
 LIKE 'Ni%';
 
 
SELECT name
     , position
     , INSTR(position, 'p' )
     , email
 FROM professor
 WHERE email LIKE '%net';
 
 
SELECT name
     , hpage
     , SUBSTR(hpage, INSTR(hpage,'/', 1, 2)+1 ,INSTR(hpage, '.')- INSTR(hpage,'/', 1, 1)-2 )
 FROM professor
 WHERE hpage IS NOT NULL;


SELECT name
     , weight
     , jumin
     , REPLACE(jumin, SUBSTR(jumin, 7, 7), '*******') "SECURE"
 FROM student
 WHERE weight < 70;
 
 
SELECT email
     , LPAD(SUBSTR(email, INSTR(email, '@'), LENGTH(email)), LENGTH(email), '?')"Email__?"
     , hpage
     , REPLACE(hpage, SUBSTR(hpage, INSTR(hpage, '.', 1, 1)+1, INSTR(hpage, '.', 1, 2)-INSTR(hpage, '.', 1, 1)-1), '***')
 FROM professor
 WHERE hpage IS NOT NULL;
 
SELECT email
     , DECODE(INSTR(email, '@'), 8, (REPLACE(email, SUBSTR(email, 1, 7), '???????')),7
                                  , (REPLACE(email, SUBSTR(email, 1, 6), '?????')),5
                                  , (REPLACE(email, SUBSTR(email, 1, 4), '????'))
        )"aa"
     , hpage
     , DECODE((INSTR(hpage, '.', 1, 2) -INSTR(hpage, '.', 1,1)),4
         ,(REPLACE(hpage, SUBSTR(hpage, INSTR(hpage, '.', 1, 1) + 1 ,3), '***'))
         ,(REPLACE(hpage, SUBSTR(hpage, INSTR(hpage, '.', 1, 1) + 1 ,5), '*****'))
        )"hpage_*"
  FROM professor
 WHERE hpage IS NOT NULL;
 
 
 
SELECT empno
     , ename
     , comm
     , CASE  WHEN comm IS NULL THEN '해당사항 없음'
                 WHEN comm = 0   THEN '수당없음'
                 ELSE '수당 : ' || comm 
           END "comm_text"
 FROM emp;
 
 

SELECT SUM(pay)
     , AVG(NVL(pay, 0)) A
     , MAX(pay)X
     , MIN(pay)N
     , ROUND(STDDEV(pay), 2)S
     , ROUND(VARIANCE(pay), 2)V
 FROM professor;
     
     
SELECT position
     , ROUND(AVG(pay), 2)
 FROM professor
 GROUP BY position
 HAVING AVG(pay) >= 300;
 
     
select * from professor;
 
 select * from member