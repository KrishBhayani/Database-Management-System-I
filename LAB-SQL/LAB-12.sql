--STORED PROCEDURE 
/*
	CREATE PROCEDURE PROCEDURE_NAME
	AS
	BEGIN
		QUERY OR STATEMENT
	END
*/

----------------------------------------------------------------------

CREATE TABLE STUDENT3
(RNO INT, NAME VARCHAR(50), BRANCH VARCHAR(50));

CREATE TABLE RESULT3
(RNO INT, SPI DECIMAL(4,2));

INSERT INTO STUDENT3
	VALUES(101,'RAJU','CE'),
		  (102,'AMIT','CE'),
		  (103,'SANJAY','ME'),
		  (104,'NEHA','EC'),
		  (105,'MEERA','EE'),
		  (106,'MAHESH','ME');

INSERT INTO RESULT3
	VALUES(101,8.8),
	      (102,9.2),
		  (103,7.6),
		  (104,8.2),
		  (105,7.0),
		  (106,8.9);
----------------------------------------------------------------------------------------------------------		  
CREATE PROCEDURE GETSTUDENTDETAILS 
AS
BEGIN 
SELECT S.RNO,S.NAME,S.BRANCH,R.RESULT3 FROM STUDENT3 S FULL OUTER JOIN RESULT3 R ON S.RNO=R.RNO 
END;

EXEC GETSTUDENTDETAILS;

----------------------------------------------------------------------------------------------------------

CREATE PROCEDURE GETSTUDENTDETAILS
@RNO INT
BEGIN 
SELECT * FROM STUDENT3
WHERE RNO=@RNO
END

EXEC GETSTUDENTDETAILS;

---------------------------------------------------------------------------------------------------------

CREATE PROCEDURE GETSTUDENTDETAILS
@RNO INT
@NAME VARCHAR(50)
@BRANCH VARCHAR(50)
AS
BEGIN 
INSERT INTO STUDENT3
(RNO,NAME,BRANCH)
VALUES
(@RNO,@NAME,@BRANCH)

END

EXEC GETSTUDENTDETAILS 107,'KARAN','CE';

SELECT * FROM STUDENT3;
