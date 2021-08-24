SELECT name
     , pay
     , bonus
 FROM professor
 ORDER BY pay DESC;
 
 SELECT name
     , id
     , hpage
 FROM professor
 WHERE deptno = 102;
 
 
 SELECT name
     , pay
     , hiredate
 FROM professor
 WHERE 300 <= pay
 AND pay <= 500;
 
 SELECT name
     , id
     , position
 FROM professor
 WHERE id  
  LIKE '%er';
  

SELECT profno
     , name
     , pay
     , bonus
     , pay*12+NVL(bonus,0) 총연봉
     ,  deptno
 FROM professor
 ORDER BY deptno desc,
   총연봉 asc;
   

SELECT name
     , pay
     , bonus
 FROM professor
 WHERE (pay >= 300 AND bonus is null )
 OR pay >= 500;
 
 
 SELECT UPPER (name)
     , LOWER (id)
     , INITCAP (POSITION)
     , LENGTH(email) email
 FROM professor;    
 
 
 SELECT gname
      , SUBSTR(jumin, 1, 2)
      , POINT
FROM CUSTOMER
WHERE point > 100000
ORDER BY point desc;


SELECT name
     , email
     , INSTR(email, '@', 1) "@"
 FROM professor;     
 
 
 SELECT name
    , email
    , SUBSTR(email, INSTR(email,'@')+1, (INSTR(email, '.')-1) - (INSTR(EMAIL, '@'))) DOMAIN
from professor;
