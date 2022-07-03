CREATE TABLE STUDENT
(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
);

ALTER TABLE STUDENT
	ADD CITY VARCHAR(20) NULL,
		BACKLOG INT NOT NULL;

ALTER TABLE STUDENT
	ALTER COLUMN NAME VARCHAR(35);

ALTER TABLE STUDENT
	ALTER COLUMN CPI INT;

SP_RENAME 'STUDENT.ENROLLMENT_NO','ENO';

ALTER TABLE STUDENT
	DROP COLUMN CITY;

SP_RENAME 'STUDENT','STUDENT_MASTER';

ALTER TABLE STUDENT_MASTER
	DROP COLUMN BACKLOG;

ALTER TABLE STUDENT_MASTER
	ALTER COLUMN NAME VARCHAR(35) NOT NULL;

SP_RENAME 'STUDENT_MASTER.BIRTHDATE','BDATE';

ALTER TABLE STUDENT_MASTER
	ALTER COLUMN ENO VARCHAR(12);
