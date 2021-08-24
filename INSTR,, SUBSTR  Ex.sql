SELECT profno
      ,name
      ,hpage
      ,INSTR(hpage, '.', 1,2) HTTP
 FROM professor
 WHERE hpage is not null;


SELECT profno
      ,name
      ,SUBSTR (email, 1 , INSTR(email, '@') -1) "email_id"
    From professor
    where email is not null;
    
    
SELECT name
      ,tel
      ,REPLACE  (tel, SUBSTR(TEL,INSTR(tel, '-',1,1)+1,4),'****')
    FROM student
WHERE DEPTNO1 = '101';