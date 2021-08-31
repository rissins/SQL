CREATE TABLE t_minus
(no1 number
,no2 number(3)
,no3 number(3,2)  --number 3자리, 소수점 2자리
);

SELECT * FROM t_minus;
DESC t_minus;

INSERT INTO t_minus values(1, 1, 1);
INSERT INTO t_minus values(-1, -1, -1);
INSERT INTO t_minus values(1.1, 1.1, 1.1);
INSERT INTO t_minus values(-1.1, -1.1, -1.1);
INSERT INTO t_minus values(2.22, 2.22, 2.22);
INSERT INTO t_minus values(22.22, 22.22, 22.22); -- 안됨
INSERT INTO t_minus values(22.22, 22.22, 2.22);
INSERT INTO t_minus values(5.555, 5.555, 5.555);
INSERT INTO t_minus values(777, 777, 7);
INSERT INTO t_minus values(8888, 888, 8);

ROLLBACK;
COMMIT;

------------------
UPDATE professor
   SET bonus = 200
 WHERE position = 'assistant professor';

SELECT * 
  FROM professor
 WHERE position = 'assistant professor';
select * from professor;

UPDATE professor
   SET pay = pay * 1.15
 WHERE position = 'instructor' and pay < 250;

-------------------
SELECT * FROM dept2
WHERE dcode >= 9000 
AND dcode <= 9999;

DELETE FROM dept2
WHERE dcode >= 9000 
AND dcode <= 9999;
----------------------
ROLLBACK;
DELETE FROM dept7;
SELECT * FROM dept4;
TRUNCATE TABLE dept7;

DROP TABLE dept4; 
 
