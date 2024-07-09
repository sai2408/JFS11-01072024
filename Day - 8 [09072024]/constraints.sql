USE CODEGNAN;

CREATE TABLE EMP (ID INT PRIMARY KEY, EMP_NAME VARCHAR(100) NOT NULL, MOBILE BIGINT UNIQUE, ADDRESS VARCHAR(100) DEFAULT "HYDERABAD");

DESC EMP;

INSERT INTO EMP (ID,EMP_NAME,MOBILE,ADDRESS) VALUES (1,"SAI",7893570611,"NELLORE");

SELECT * FROM EMP;

INSERT INTO EMP (ID,EMP_NAME,MOBILE) VALUES (2,"VENKAT",987654321);

CREATE TABLE EMP2 ( 
ID INT PRIMARY KEY AUTO_INCREMENT,
EMP_NAME VARCHAR(100) NOT NULL DEFAULT "NAME",
MOBILE BIGINT UNIQUE,
ADDRESS VARCHAR(100) DEFAULT "HYD"
);
	
SELECT * FROM EMP2;

INSERT INTO EMP2 (EMP_NAME,MOBILE,ADDRESS) VALUES ("SAI",7893570611,"NELLORE");

INSERT INTO EMP2 (MOBILE) VALUES (9987654321);

INSERT INTO EMP2 (MOBILE) VALUES (99999999991);