-- CALIFORNIA STATE UNIVERSITY, SAN BERNARDINO
-- DEPARTMENT OF COMPUTER SCIENCE
-- Course: CSE572
-- STUDENT: JOSEPH CARMONA, JASMINE PENA
-- 
-- UNIVERSITY DATABASE PROJECT
-- DATA


SET CONSTRAINTS ALL DEFERRED;

--DEPARTMENT: (departmentNo, managerNo, name, phoneNo, faxNo, location)
INSERT INTO DEPARTMENT VALUES ('1', '1', 'Science', '909-321-1111',
	'909-321-1110', 'A Block');
INSERT INTO DEPARTMENT VALUES ('2', '2', 'English', '909-321-2222',
	'909-321-2220', 'B Block');
INSERT INTO DEPARTMENT VALUES ('3', '3', 'Math', '909-321-3333',
	'909-321-3330', 'C Block');
INSERT INTO DEPARTMENT VALUES ('4', '4', 'Music', '909-321-4444',
	'909-321-4440', 'D Block');
INSERT INTO DEPARTMENT VALUES ('5', '5', 'CIS', '909-321-5555',
	'909-321-5550', 'E Block');


--COURSE: (courseNo, departmentNo, managerNo, student_total, title)
INSERT INTO COURSE VALUES ('B.S.01', '1', '1', '63', 'Biology');
INSERT INTO COURSE VALUES ('B.A.01', '2', '2', '25', 'Novelist');
INSERT INTO COURSE VALUES ('B.A.02', '4', '4', '7', 'Music Theory');
INSERT INTO COURSE VALUES ('B.S.02', '3', '3', '20', 'Conceptual Math');
INSERT INTO COURSE VALUES ('B.A.03', '2', '7', '9', 'English Teaching Track');
INSERT INTO COURSE VALUES ('B.S.05', '5', '5', '14', 'PgDIT');
INSERT INTO COURSE VALUES ('B.S.06', '5', '10', '15', 'Computer Science');
INSERT INTO COURSE VALUES ('B.S.03', '1', '6', '12', 'Premed');
INSERT INTO COURSE VALUES ('B.A.06', '4', '9', '5', 'Studio Music');
INSERT INTO COURSE VALUES ('B.S.04', '3', '8', '11', 'Math Teaching Track');


--ACADEMIC_STAFF: (staffNo, networkID, departmentNo, first_name, last_name,
--phoneExt, officeNo, sex, salary, post, qualifications, street, city,
--state, zip, start_date, end_date)

INSERT INTO ACADEMIC_STAFF VALUES ('1', '1', '1', 'Andrew', 'Johnson',
	'33238', 'AB101', 'M', '2200', 'Lecturer',
	'Ph.D. in Molecular Biology', '6128 Bear Valley Road', 'Victorville',
	'CA', '92392', '19-JAN-06', '');

INSERT INTO ACADEMIC_STAFF VALUES ('2', '2', '2', 'Gavin', 'Free',
	'14656', 'BB101', 'M', '1200', 'Lecturer',
	'Ph.D. in English', '9643 5th Street', 'San Bernardino',
	'CA', '92407', '22-FEB-10', '');

INSERT INTO ACADEMIC_STAFF VALUES ('3', '3', '3', 'Beth', 'Stevens',
	'23171', 'CB101', 'F', '2200', 'Researcher',
	'Ph.D. in  Mathematics', '7135 Northpark Blvd', 'Redlands',
	'CA', '92392', '03-MAR-09', '');

INSERT INTO ACADEMIC_STAFF VALUES ('4', '4', '4', 'Susan', 'Healy',
	'22354', 'DB101', 'F', '1200', 'Lecturer',
	'Ph.D. in Music Theory', '5162 Kendall Drive', 'Fontana',
	'CA', '92316', '16-APR-10', '');

INSERT INTO ACADEMIC_STAFF VALUES ('5', '5', '5', 'Paul', 'McCartney',
	'80691', 'EB101', 'M', '1500', 'Researcher',
	'Ph.D. Computer Science', '4912 Dirt Court', 'Rialto',
	'CA', '92376', '15-MAR-07', '');

INSERT INTO ACADEMIC_STAFF VALUES ('6', '6', '1', 'Jessica', 'Alba',
	'85310', 'AB102', 'F', '2000', 'Lab Instructor',
	'M.S. in Organic Chemistry', '9461 Pavement Road', 'San Bernardino',
	'CA', '92407', '22-JUN-11', '');

INSERT INTO ACADEMIC_STAFF VALUES ('7', '7', '2', 'Brian', 'Lui',
	'84017', 'BB102', 'M', '1000', 'Lecturer',
	'M.A. in Writing', '4894 Gravel Lane', 'Highland',
	'CA', '92346', '13-AUG-12', '');

INSERT INTO ACADEMIC_STAFF VALUES ('8', '8', '3', 'Alex', 'Perez',
	'78905', 'CB102', 'F', '2000', 'Lab Instructor',
	'M.S. in Mathematics', '2894 Node Road', 'Upland',
	'CA', '91763', '21-SEP-15', '');

INSERT INTO ACADEMIC_STAFF VALUES ('9', '9', '4', 'Taylor', 'Romano',
	'62111', 'DB102', 'M', '1000', 'Lecturer',
	'M.A. in Music Theory', '1046 48th Street', 'Hesperia',
	'CA', '92344', '10-OCT-08', '');

INSERT INTO ACADEMIC_STAFF VALUES ('10', '10', '5', 'Linda', 'Lopez',
	'51221', 'EB102', 'F', '1300', 'Lecturer',
	'M.S. in Information Technology', '1479 Highland Avenue', 'Adelanto',
	'CA', '92301', '25-NOV-11', '');


--Module: (moduleNo, moduleTitle, courseNo, coordinatorNo, start_date,
--end_date, texts, assesment_scheme)

INSERT INTO MODULE VALUES ('BIO201', 'Intro to Biology', 'B.S.01',
	'1', '23-SEP-19', '18-DEC-19',
	'Biology Basics',
	'20% homework, 30% lab, 25% midterm, 25% final');

INSERT INTO MODULE VALUES ('ENG101', 'Creative Writing', 'B.A.01',
	'2', '24-SEP-19', '19-DEC-19',
	'None',
	'One essay due every two weeks, each essayworth 20%');

INSERT INTO MODULE VALUES ('MUS310', 'Transposition', 'B.A.06',
	'4', '24-SEP-19', '19-DEC-19',
	'Advanced Music Theory',
	'50% assessments, 50% performance');

INSERT INTO MODULE VALUES ('MAT331', 'Linear Algebra', 'B.S.04',
	'3', '23-SEP-19', '18-DEC-19',
	'Linear Algebra',
	'10% participation, 20% homework, 20% online, 25% midterm, 25% final');

INSERT INTO MODULE VALUES ('ENG201', 'Expository Writing', 'B.A.03',
	'7', '06-JAN-20', '25-MAR-20',
	'Grammar for Beginners',
	'100% essays, 10% per essay, due every week');

INSERT INTO MODULE VALUES ('CIS616', 'Network Security', 'B.S.05',
	'5', '07-JAN-20', '26-MAR-20',
	'Firewalls and Ports',
	'50% midterm, 50% final');

INSERT INTO MODULE VALUES ('CIS300', 'Multimedia', 'B.S.06',
	'10', '06-JAN-20', '25-MAR-20',
	'Adobe Creative Cloud Basics',
	'30% essays, 35% midterm, 35% final');

INSERT INTO MODULE VALUES ('CHE300', 'Organic Chemistry', 'B.S.03',
	'6', '07-JAN-20', '26-MAR-20',
	'How the Body Works for Adults',
	'20% homework, 30% lab, 25% midterm, 25% final');

INSERT INTO MODULE VALUES ('MUS420', 'Advanced Harmonics', 'B.A.02',
	'9', '06-APR-20', '10-JUN-20',
	'Anyway, Heres Wonderwall',
	'100% end of term performance');

INSERT INTO MODULE VALUES ('MAT401', 'Fourier Transformations', 'B.S.02',
	'8','07-APR-20', '11-JUN-20',
	'Signals and Systems',
	'20% homework, 40% midterm, 40% final');


--STUDENT: (matriculationNo, networkID, courseNo, first_name, last_name,
--street, city, states, zip, dob, sex, loan, performance)

INSERT INTO STUDENT VALUES ('11', '11', 'B.S.01', 'Dusty', 'Boi',
	'1645 Blood Street', 'Riverside', 'CA', '92506', '30-AUG-95',
	'M', '45123', 'Super good');

INSERT INTO STUDENT VALUES ('12', '12', 'B.A.01', 'Juanito', 'Rodriguez',
	'1879 Protein Road', 'Adelanto', 'CA', '92301', '22-SEP-98',
	'M', '29943', 'Okay I guess');

INSERT INTO STUDENT VALUES ('13', '13', 'B.A.06', 'Toby', 'Badillo',
	'5681 Bridge Court', 'Riverside', 'CA', '92506', '11-JUL-00',
	'M', '5623', 'the best');

INSERT INTO STUDENT VALUES ('14', '14', 'B.S.04', 'Karen', 'Gillian',
	'8534 Tardis Way', 'Compton', 'CA', '90220', '05-MAY-99',
	'F', '23463', 'Will graduate');

INSERT INTO STUDENT VALUES ('15', '15', 'B.A.03', 'Brie', 'Larson',
	'7352 Comedy Street', 'Chino', 'CA', '91708', '28-FEB-97',
	'F', '9678', 'Passes all classes');

INSERT INTO STUDENT VALUES ('16', '16', 'B.S.05', 'Tessa', 'Thompson',
	'7654 Field Blvd', 'San Diego', 'CA', '92056', '09-JUN-95',
	'F', '0', 'Best student in the world');

INSERT INTO STUDENT VALUES ('17', '17', 'B.S.06', 'Peter', 'Parker',
	'3544 Walkboard Ave', 'Apple Valley', 'CA', '92307', '19-MAY-96',
	'M', '17426', 'Incredibly smart');

INSERT INTO STUDENT VALUES ('18', '18', 'B.S.03', 'Chris', 'Hemsworth',
	'9652 Flapjack Lane', 'San Bernardino', 'CA', '92407', '25-DEC-99',
	'M', '12465', 'Okay at best');

INSERT INTO STUDENT VALUES ('19', '19', 'B.A.02', 'Sansa', 'Stark',
	'3780 Smite Road', 'Ontario', 'CA', '91710', '04-JUL-00',
	'F', '6531', 'Might Fail');

INSERT INTO STUDENT VALUES ('20', '20', 'B.S.02', 'Emilia', 'Clarke',
	'6419 Ezio Lane', 'San Bernardino', 'CA', '92407', '31-OCT-85',
	'F', '8645', 'Academic probation');


--Next-of-kin: (matriculationNo, first_name, last_name, street, city, states,
--zip, phoneNo, relationship)

INSERT INTO NEXT_OF_KIN VALUES ('11', 'Roger', 'Boi',
	'1645 Blood Street', 'Riverside', 'CA', '92506',
	'951-295-4713', 'Father');

INSERT INTO NEXT_OF_KIN VALUES ('12', 'Sandy', 'Rodriguez',
	'7614 Catalina Drive', 'Palmdale', 'CA', '93510',
	'909-602-4462', 'Mother');

INSERT INTO NEXT_OF_KIN VALUES ('13', 'Miguel', 'Badillo',
	'5681 Bridge Court', 'Riverside', 'CA', '92506',
	'951-897-9031', 'Father');

INSERT INTO NEXT_OF_KIN VALUES ('14', 'Jose', 'Guzman',
	'2318 Archer Way', 'Long Beach', 'CA', '90712',
	'909-469-8664', 'Guardian');

INSERT INTO NEXT_OF_KIN VALUES ('15', 'Eric', 'Brown',
	'7352 Comedy Street', 'Chino', 'CA', '91708',
	'909-849-0513',	'Father');

INSERT INTO NEXT_OF_KIN VALUES ('16', 'Lucy', 'Thompson',
	'7654 Field Blvd', 'San Diego', 'CA', '92056',
	'909-520-4187', 'Mother');

INSERT INTO NEXT_OF_KIN VALUES ('17', 'May', 'Parker',
	'6438 Rising Road', 'Baker',	'CA', '92309',
	'909-107-6036', 'Aunt');

INSERT INTO NEXT_OF_KIN VALUES ('18', 'Hayley',	'Williams',
	'9652 Flapjack Lane', 'San Bernardino',	'CA', '92407',
	'909-187-2495', 'Mother');

INSERT INTO NEXT_OF_KIN VALUES ('19', 'Tony', 'Stark',
	'3780 Smite Road', 'Ontario', 'CA', '91710',
	'951-730-8529', 'Grandfather');

INSERT INTO NEXT_OF_KIN VALUES ('20', 'Kent', 'Clarke',
	'4861 Solano Court', 'Fresno', 'CA', '93650',
	'951-437-3794', 'Father');


--lecturer_position: (moduleNo, staffNo, hours_worked
INSERT INTO LECTURER_POSITION VALUES ('BIO201', '1', '12');
INSERT INTO LECTURER_POSITION VALUES ('ENG101', '2', '14');
INSERT INTO LECTURER_POSITION VALUES ('MUS310', '4', '16');
INSERT INTO LECTURER_POSITION VALUES ('MAT331', '3', '16');
INSERT INTO LECTURER_POSITION VALUES ('ENG201', '7', '9');
INSERT INTO LECTURER_POSITION VALUES ('CIS616', '5', '11');
INSERT INTO LECTURER_POSITION VALUES ('CIS300', '10', '15');
INSERT INTO LECTURER_POSITION VALUES ('CHE300', '6', '10');
INSERT INTO LECTURER_POSITION VALUES ('MUS420', '9', '14');
INSERT INTO LECTURER_POSITION VALUES ('MAT401', '8', '13');


--seat: (moduleNo, matriculationNo)
INSERT INTO SEAT VALUES ('BIO201', '11');
INSERT INTO SEAT VALUES ('ENG101', '12');
INSERT INTO SEAT VALUES ('MUS310', '13');
INSERT INTO SEAT VALUES ('MAT331', '14');
INSERT INTO SEAT VALUES ('ENG201', '15');
INSERT INTO SEAT VALUES ('CIS616', '16');
INSERT INTO SEAT VALUES ('CIS300', '17');
INSERT INTO SEAT VALUES ('CHE300', '18');
INSERT INTO SEAT VALUES ('MUS420', '19');
INSERT INTO SEAT VALUES ('MAT401', '20');

SET CONSTRAINTS ALL IMMEDIATE;
