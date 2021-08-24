SELECT TEXT
     , REGEXP_COUNT(TEXT, 'a')
     , REGEXP_COUNT(TEXT, 'c', 5)
     , REGEXP_COUNT(TEXT, 'c', 1, 'i')  -- 'i' 대소문자 구별 X
     , REGEXP_COUNT(TEXT, '\.')
     , REGEXP_COUNT(TEXT, '.')
     , LENGTH (TEXT)
     , REGEXP_COUNT(TEXT, 'aa')
     , REGEXP_COUNT(TEXT, 'a{2}')
     , REGEXP_COUNT(TEXT, '(a)(a)')
  FROM T_REG;



SELECT *
  FROM T_REG
-- WHERE REGEXP_LIKE(TEXT, '[a-z]')
-- WHERE REGEXP_LIKE(TEXT, '[A-Z]')
-- WHERE REGEXP_LIKE(TEXT, '[a-zA-Z]');
--WHERE REGEXP_LIKE(TEXT, '[a-z] ');
--WHERE REGEXP_LIKE(TEXT, '[a-z][0-9]');
--WHERE REGEXP_LIKE(TEXT, '[a-z] [0-9]');
--WHERE REGEXP_LIKE(TEXT, '[a-z]  [0-9]');
--WHERE REGEXP_LIKE(TEXT, '[a-z]   [0-9]');
--WHERE REGEXP_LIKE(TEXT, '[[:space:]]');
--WHERE REGEXP_LIKE(TEXT, '[a-z]$');
WHERE REGEXP_LIKE(TEXT, '[0-9]$');
