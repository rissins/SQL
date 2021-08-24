SELECT NO
     , IP
     , REGEXP_REPLACE(IP, '\.', '') "Don Remove"
  FROM T_REG2;  
  
  
SELECT NO
     , ip
     , REGEXP_REPLACE(IP,'\.', '/',1,1)
  FROM T_REG2;
  
  
  