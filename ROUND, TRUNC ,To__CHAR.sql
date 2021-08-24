SELECT ROUND (987.654,2) "1"
      ,ROUND (987.654,1) "1"
      ,ROUND (987.654,0) "1"
      ,ROUND (987.654,-1) "1"
      ,ROUND (987.654,-2) "1"
      ,ROUND (987.654,-3) "1"
  FROM dual;
  
  
SELECT TRUNC (987.654,2) "1"
      ,TRUNC (987.654,1) "1"
      ,TRUNC (987.654,0) "1"
      ,TRUNC (987.654,-1) "1"
  FROM dual; 
  
SELECT MOD (121, 10) "1"
     , CEIL(123.45) "1"
     , FLOOR(123.45) "1"
     , POWER(2,3)
  FROM dual;  
  
  
SELECT SYSDATE
     , ADD_MONTHS(SYSDATE, 1)
     , MONTHS_BETWEEN('14/09/30', '14/08/31')
     , MONTHS_BETWEEN('14/08/31', '14/09/30')
     , MONTHS_BETWEEN('14/08/31', '14/09/30')
  FROM dual;
  
SELECT '21/08/10'
     , SYSDATE
     , NEXT_DAY(SYSDATE, '수')
     , NEXT_DAY(SYSDATE, '화')
  FROM dual;
  

SELECT 2 + 3
     , 2 + TO_NUMBER('3')
     , 2 + '3'
  FROM dual;
  
SELECT SYSDATE
     , TO_CHAR(SYSDATE, 'YYYY-MM-DD') "1"
     , TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') "1"
     , TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI') "3"
     , TO_CHAR(SYSDATE, 'YYYY') "Y"
     , TO_CHAR(SYSDATE, 'YY') "Y"
     , TO_CHAR(SYSDATE, 'YEAR') "Y"
     , TO_CHAR(SYSDATE, 'MM') "M"
     , TO_CHAR(SYSDATE, 'MON') "M"
     , TO_CHAR(SYSDATE, 'MONTH') "M"
     , TO_CHAR(SYSDATE, 'DD') "D"
     , TO_CHAR(SYSDATE, 'DAY') "D"
     , TO_CHAR(SYSDATE, 'DDTH') "D"
     
  FROM dual;