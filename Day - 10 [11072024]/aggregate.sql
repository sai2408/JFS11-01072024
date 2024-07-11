USE CODEGNAN;

CREATE TABLE STUDENT_DATA 
	(ID INT NOT NULL,
    STUNAME VARCHAR(50) NOT NULL,
    STUSUBJECT VARCHAR(10) NOT NULL,
    MARKS INT DEFAULT 0
    );
    
DESC STUDENT_DATA;

SELECT * FROM STUDENT_DATA;

INSERT INTO STUDENT_DATA VALUES (1,"SAI","ENGLISH",90),(1,"SAI","MATHS",80),(1,"SAI","SOCIAL",70);

INSERT INTO STUDENT_DATA VALUES (2,"VENKAT","ENGLISH",99), (2,"VENKAT","MATHS",99),(2,"VENKAT","SOCIAL",99);

INSERT INTO STUDENT_DATA VALUES (3,"VARDHAN","ENGLISH",99),(3,"VARDHAN","MATHS",9),(3,"VARDHAN","SOCIAL",9);

INSERT INTO STUDENT_DATA VALUES (4,"AKHIL","ENGLISH",9),(4,"AKHIL","MATHS",100),(4,"AKHIL","SOCIAL",9);

INSERT INTO STUDENT_DATA VALUES (5,"VISHNU","ENGLISH",30),(5,"VISHNU","MATHS",30),(5,"VISHNU","SOCIAL",100);

INSERT INTO STUDENT_DATA VALUES (6,"HARI","ENGLISH",100),(6,"HARI","MATHS",30),(6,"HARI","SOCIAL",40);

SELECT SUM(MARKS) FROM STUDENT_DATA;

SELECT COUNT(ID) FROM STUDENT_DATA;

SELECT MAX(MARKS) FROM STUDENT_DATA;

SELECT MIN(MARKS) FROM STUDENT_DATA;

SELECT AVG(MARKS) FROM STUDENT_DATA;


-- I need total marks records for each student

SELECT ID,SUM(MARKS) AS TOTAL_MARKS FROM STUDENT_DATA GROUP BY ID;

SELECT ID,MARKS AS ENGLISH_MARKS FROM STUDENT_DATA WHERE STUSUBJECT = "ENGLISH";

SELECT ID,STUNAME,SUM(MARKS) AS TOTAL_MARKS FROM STUDENT_DATA GROUP BY ID,STUNAME HAVING TOTAL_MARKS > 120 ORDER BY TOTAL_MARKS ASC;

CREATE TABLE FINAL_MARKS(
	ID INT PRIMARY KEY,
    STUDENT_NAME VARCHAR(100),
    STUDENT_MARKS INT
    );

SELECT * FROM FINAL_MARKS;

INSERT INTO FINAL_MARKS SELECT ID,STUNAME,SUM(MARKS) AS TOTAL_MARKS FROM STUDENT_DATA GROUP BY ID,STUNAME;

SELECT * FROM FINAL_MARKS;



