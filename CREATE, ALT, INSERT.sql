CREATE TABLE 한글테이블
(컬럼1 NUMBER(3)
,컬럼2 VARCHAR2(10)
,컬럼3 DATE
);

SELECT * FROM 한글테이블;

----
CREATE TABLE NEW_EMP
(NO NUMBER(3)
,NAME VARCHAR2(10)
,HIREDATE DATE
,BONUS NUMBER(6,2)
);

SELECT * FROM NEW_EMP;

----
CREATE TABLE DEPT3
AS
SELECT * FROM DEPT2;

SELECT * FROM DEPT3;
----
CREATE TABLE DEPT4
AS
SELECT DCODE, DNAME FROM DEPT2;

SELECT * FROM DEPT4;
----

CREATE TABLE new_emp2
AS
SELECT empno, ename, hiredate FROM emp;

SELECT * FROM new_emp2;
-----

CREATE TABLE dept5
AS
SELECT * FROM dept2
WHERE 1=2;

SELECT * FROM dept5;
-------
CREATE TABLE dept6
AS
SELECT dcode, dname FROM dept2
WHERE dcode IN (1000, 1001, 1002);

SELECT * FROM dept6;
------

ALTER TABLE dept6
ADD (LOCATION VARCHAR2(10));

SELECT * FROM dept6;
-----

ALTER TABLE dept6
ADD (LOCATION2 VARCHAR2(10) DEFAULT 'seoul');


ALTER TABLE new_emp2
ADD (BIRTHDAY VARCHAR2(10) DEFAULT SYSDATE);

ALTER TABLE new_emp2
ADD (hiredate VARCHAR2(10));
------------
CREATE TABLE NEW_EMP3
AS
select * from new_emp2
where 1=2;
-----------
alter table dept6 rename column location2 to loc;

select * from dept6;

rename dept6 to dept7;

-----

ALTER TABLE dept7 DROP column loc;

SELECT * FROM DEPT7;
------

ALTER TABLE new_emp2 DROP column BIRTH;

alter table new_emp2 rename column birthday to birth;

alter table new_emp2 modify empno NUMBER(7);


select * from new_emp2;
---------

INSERT INTO dept2
--(dcode
--                , dname
--                , pdept
--                , area)
        VALUES(9001
             , 'TEMP_2'
             , 1006
             , 'TEMP AREA'
             );

SELECT * FROM dept2;

ROLLBACK;

COMMIT;
