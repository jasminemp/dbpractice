-- CALIFORNIA STATE UNIVERSITY, SAN BERNARDINO
-- DEPARTMENT OF COMPUTER SCIENCE
-- Course: CSE572
-- STUDENT: JOSEPH CARMONA, JASMINE PENA
-- 
-- UNIVERSITY DATABASE PROJECT
-- Views script

spool views.txt

--a) List details of all departments located in E block
DROP VIEW DEPTE;
CREATE VIEW DEPTE
AS	SELECT *
	FROM DEPARTMENT
	WHERE LOCATION = 'E Block';

--b) title, start date, end date of all modules in pgDIT course. 
DROP VIEW PGDITMODULES;
CREATE VIEW PGDITMODULES
AS	SELECT MODULETITLE, START_DATE, END_DATE
	FROM MODULE	
	WHERE COURSENO in
		(SELECT COURSENO FROM COURSE
		 WHERE UPPER(TITLE) = UPPER('PgDIT'));
	 
--c) list name, address, and salary for all females who manage a department
DROP VIEW FMAN;
CREATE VIEW FMAN
AS	SELECT FIRST_NAME, LAST_NAME, STREET, CITY, STATE, ZIP, SALARY
	FROM ACADEMIC_STAFF
	WHERE SEX = 'F' AND STAFFNO IN
		(SELECT MANAGERNO FROM DEPARTMENT);
	
--d) list name, sex, salary, for each lecturer with a PhD
DROP VIEW DOC;
CREATE VIEW DOC
AS	SELECT FIRST_NAME, LAST_NAME, SEX, SALARY
	FROM ACADEMIC_STAFF
	WHERE QUALIFICATIONS LIKE 'Ph.D.%';

--e) list last_name, post, qualifications, of all members employed by CIS department
DROP VIEW CISDEPT;
CREATE VIEW CISDEPT
AS	SELECT LAST_NAME, POST, QUALIFICATIONS
	FROM ACADEMIC_STAFF
	WHERE DEPARTMENTNO IN (
		SELECT DEPARTMENTNO
		FROM DEPARTMENT
		WHERE UPPER(NAME) = UPPER('CIS'));

--f) list matriculationNo,last_name, and sex of all students studying multimedia module
-- order alphabetically by last_name
DROP VIEW MULTIMOD;
CREATE VIEW MULTIMOD
AS	SELECT S.MATRICULATIONNO, S.LAST_NAME, S.SEX
	FROM STUDENT S, SEAT T
	WHERE S.MATRICULATIONNO = T.MATRICULATIONNO AND T.MODULENO IN
		(SELECT MODULENO
		FROM MODULE
		WHERE UPPER(MODULETITLE) = UPPER('Multimedia'))
	ORDER BY LAST_NAME;

--g) list staff number, last_name, sex, post of all academic_staff whose salary is greater
-- than the average salary
DROP VIEW GTAVG;
CREATE VIEW GTAVG
AS	SELECT STAFFNO, LAST_NAME, SEX, POST
	FROM ACADEMIC_STAFF
	WHERE SALARY >
		(SELECT AVG(SALARY) FROM ACADEMIC_STAFF);
 
 --h) for each course with more than 10 students, list course title and number of students
 DROP VIEW COURSETEN;
 CREATE VIEW COURSETEN
 AS		SELECT TITLE, STUDENT_TOTAL
		FROM COURSE
		WHERE STUDENT_TOTAL > 10;
 
 --i) list number of female members of academic staff and number of male academic staff
 DROP VIEW STAFFGENDER;
 CREATE VIEW STAFFGENDER
 AS		SELECT COUNT(STAFFNO) AS "COUNT(STAFFNO)", SEX
		FROM ACADEMIC_STAFF
		WHERE DEPARTMENTNO IN (
			SELECT DEPARTMENTNO
			FROM DEPARTMENT
			WHERE UPPER(NAME) = UPPER('CIS'))
		GROUP BY SEX;


 --j) for each member of academic staff who spends more than 6 hours teaching any module
 -- list the member of academic staff last name, module title and number of hours 
 DROP VIEW MODSIX;
 CREATE VIEW MODSIX
 AS		SELECT A.LAST_NAME, M.MODULETITLE, P.HOURS_WORKED	
		FROM ACADEMIC_STAFF A, MODULE M, LECTURER_POSITION P
		WHERE A.STAFFNO = P.STAFFNO AND M.MODULENO = P.MODULENO AND P.HOURS_WORKED > 6;

spool off
