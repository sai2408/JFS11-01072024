USE CODEGNAN;

CREATE TABLE STUDENT123(
	ID INT,
	SNAME VARCHAR(50)
);

INSERT INTO STUDENT123 VALUES (1,"SAI 1"),(2,"SAI 2"),(3,"SAI 3"),(4,"SAI 4");
SELECT * FROM STUDENT123;
CREATE TABLE COURSE123(
	CID INT,
	CNAME VARCHAR(50)
);
INSERT INTO COURSE123 VALUES (1,"ECE"),(2,"EEE"),(1,"CSE"),(3,"ABC");
SELECT * FROM COURSE123;
-- INNER JOIN

SELECT ID,SNAME FROM STUDENT123 
INNER JOIN COURSE123
ON STUDENT123.ID = COURSE123.CID;

-- LEFT JOIN
SELECT ID,SNAME FROM STUDENT123
LEFT JOIN COURSE123
ON STUDENT123.ID = COURSE123.CID;

-- RIGHT JOIN
SELECT ID,SNAME FROM STUDENT123
RIGHT JOIN COURSE123
ON STUDENT123.ID = COURSE123.CID;

-- FULL OUTER JOIN
SELECT ID,SNAME FROM STUDENT123
LEFT JOIN COURSE123
ON STUDENT123.ID = COURSE123.CID
UNION
SELECT ID,SNAME FROM STUDENT123
RIGHT JOIN COURSE123
ON STUDENT123.ID = COURSE123.CID;
