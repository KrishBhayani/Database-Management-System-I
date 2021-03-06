CREATE TABLE STUDENT4
(RNO INT, NAME  VARCHAR(50), BRANCH VARCHAR(50), SPI DECIMAL(4,2), BKLOG INT);

INSERT INTO STUDENT4
	VALUES(101,'RAJU','CE',8.80,0),
	      (102,'AMIT','CE',8.80,0),
		  (103,'SANJAY','ME',8.80,0),
		  (104,'NEHA','EC',8.80,0),
		  (105,'MEERA','EE',8.80,0),
		  (106,'MAHESH','EC',8.80,0);


CREATE VIEW PERSONAL AS SELECT * FROM STUDENT4; 

CREATE VIEW STUDENT_DETAILS AS SELECT RNO,NAME,BRANCH FROM STUDENT4;

CREATE VIEW ACADEMIC2 AS SELECT RNO,NAME,BRANCH FROM STUDENT4;

CREATE VIEW STUDENT_DATA AS SELECT * FROM STUDENT4 WHERE BKLOG>2;

CREATE VIEW STUDENT_PATTERN AS SELECT * FROM STUDENT4 WHERE NAME LIKE '____';

INSERT INTO ACADEMIC2 VALUES(107,'MEET','ME');

UPDATE STUDENT_DETAILS SET BRANCH='ME' WHERE NAME='AMIT';

DELETE FROM ACADEMIC2 WHERE RNO=104;

CREATE VIEW DISPLAY AS SELECT * FROM STUDENT4 WHERE SPI>9.5;

CREATE VIEW DISPLAT1 AS SELECT BKLOG FROM STUDENT4 WHERE BKLOG=0;


