USE CODEGNAN;

CREATE TABLE USERS (USERID INT PRIMARY KEY NOT NULL, NAME VARCHAR(10) NOT NULL, AGE INT DEFAULT 0);

CREATE TABLE ORDERS (
	ORDERID INT PRIMARY KEY,
    PRODUCTNAME VARCHAR(100),
    PRICE INT DEFAULT 0,
    UID INT NOT NULL,
    FOREIGN KEY (UID) REFERENCES USERS(USERID)
);

DESC USERS;

DESC ORDERS;

INSERT INTO USERS VALUES (1,"SAI",30);

select * from orders;

select * from users;

INSERT INTO ORDERS VALUES (101,"SOAP", 100, 1);

INSERT INTO USERS VALUES (2,"VARDHAN",29);

INSERT INTO ORDERS VALUES (102,"TOOTH BRUSH",50,2);

INSERT INTO ORDERS VALUES (103,"TOOTH PASTE",60,2);








    