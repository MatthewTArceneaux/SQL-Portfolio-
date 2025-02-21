/*CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    birth_date DATE,
    enrollment_date DATE,
    department_id INT
    );

CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(10) UNIQUE,
    credits INT,
    department_id INT,
    instructor_id INT
    );

CREATE TABLE instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    department_id INT
   );

CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade CHAR(2) DEFAULT NULL
    );

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100),
    department_code VARCHAR(10) UNIQUE
);*/

/*INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Ann', 'Horne', 'erikhenry@yahoo.com', '971-749-6687', '1997-03-10', '2020-05-24', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Ryan', 'White', 'istephens@yahoo.com', '882.904.1161', '1998-11-26', '2022-01-23', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Javier', 'Mueller', 'trujillostephanie@johnston.com', '362-129-9100', '2004-02-01', '2022-12-22', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Christine', 'Booker', 'ucooper@hawkins-romero.org', '077-664-2573', '2000-03-17', '2021-04-29', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Nicole', 'Jones', 'meghan19@wilson.com', '169-749-4928', '1994-07-06', '2022-08-21', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Dale', 'Pena', 'sfrench@hotmail.com', '299-743-6152', '2004-01-18', '2021-12-21', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Elizabeth', 'Brooks', 'davidhamilton@cooper.com', '649-854-9017', '2001-04-07', '2020-07-04', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Richard', 'Perez', 'paul51@yahoo.com', '658-356-0759', '1998-07-15', '2021-04-01', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Michelle', 'Hawkins', 'jennifer78@gmail.com', '547.422.5463', '2005-12-08', '2023-04-25', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Morgan', 'Reyes', 'ibarr@lewis.com', '171.253.1772', '2001-12-19', '2021-04-25', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Taylor', 'Rodriguez', 'nicolemorris@yahoo.com', '899.867.2542', '1995-07-18', '2022-06-24', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Joe', 'James', 'robinsonrenee@cummings-buckley.info', '(390)741-0364', '2003-04-22', '2023-09-07', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Laura', 'Mcintyre', 'timothy49@rose.com', '(064)681-9361', '1996-10-17', '2020-05-25', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Brianna', 'Wolfe', 'mccoyfelicia@yahoo.com', '(823)655-2669', '1996-05-30', '2024-11-29', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Michael', 'Jones', 'juarezscott@schmitt.com', '105.213.2338', '2004-08-01', '2021-10-18', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Devin', 'Vargas', 'mariemartinez@preston.com', '064-749-1289', '2002-07-03', '2022-06-10', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Tyler', 'Dyer', 'woodkeith@walsh.biz', '005-638-0368', '2003-06-28', '2021-04-12', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Michael', 'Porter', 'henrymelissa@yahoo.com', '139-375-8614', '2001-07-28', '2022-12-18', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Wesley', 'Bowman', 'manningyolanda@myers.org', '121.674.8766', '1999-12-26', '2021-01-09', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Richard', 'King', 'randystevenson@gmail.com', '486-676-3763', '1997-11-22', '2022-05-15', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Paul', 'Smith', 'belindagallagher@walker-alexander.com', '745.041.9733', '2003-07-04', '2024-04-26', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Billy', 'Jones', 'tuckerkelsey@lawson.com', '2673604394', '1997-01-26', '2020-10-13', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Gabriel', 'Fletcher', 'kmatthews@hotmail.com', '5381958972', '1997-12-25', '2023-01-24', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Destiny', 'Martin', 'amber87@hotmail.com', '9423216690', '1994-06-05', '2023-12-06', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Joshua', 'Jensen', 'michelle55@hotmail.com', '8374350994', '1999-07-08', '2024-04-26', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Jennifer', 'Davis', 'melissa75@yahoo.com', '707-862-5628', '1996-12-07', '2022-01-15', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Thomas', 'Kramer', 'sergiowright@holder.biz', '454-872-0835', '1994-06-01', '2024-05-23', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Morgan', 'Moreno', 'fcarter@long.org', '162-563-0375', '1995-10-02', '2022-01-03', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Lisa', 'Jones', 'maureen51@yahoo.com', '330.952.0238', '2004-01-26', '2020-03-30', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Michael', 'Young', 'bakereric@yahoo.com', '782-149-2066', '1994-03-01', '2023-11-21', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Michael', 'Myers', 'ygonzalez@hotmail.com', '920.790.9122', '2006-07-13', '2022-05-23', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Tracy', 'Johns', 'robertday@yahoo.com', '4065360210', '2001-07-20', '2020-01-13', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Mary', 'Strickland', 'brittany67@gmail.com', '585-496-6012x', '2002-03-14', '2022-06-14', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Travis', 'Wilson', 'austinkaren@hotmail.com', '395-466-1933', '2006-05-03', '2022-07-12', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Alexander', 'Bell', 'solson@yahoo.com', '802.305.6105', '1994-04-29', '2024-06-05', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Jennifer', 'Smith', 'angelaherring@hotmail.com', '226.916.6164', '2005-11-20', '2021-10-03', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Latoya', 'Mendoza', 'millergwendolyn@hotmail.com', '(871)992-8430', '2006-02-22', '2021-01-14', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Austin', 'Davis', 'vgarcia@hotmail.com', '(906)341-7988', '2004-10-21', '2024-08-22', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Jeffrey', 'Silva', 'kellyscott@yahoo.com', '624.530.4005', '1999-03-21', '2023-09-19', 5);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Steven', 'Peters', 'wilsonbrittany@jackson.com', '598.137.0187', '1996-11-12', '2023-01-08', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Diana', 'Davis', 'bradley89@ellison-woods.com', '267-816-8896', '1994-10-24', '2021-09-25', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Gabrielle', 'Reed', 'leachlisa@davies.com', '667-142-6076', '1998-12-14', '2022-03-02', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Tamara', 'Atkins', 'padillamichelle@gomez.net', '(416)011-3429', '1998-04-05', '2023-04-19', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Brian', 'Torres', 'austin46@gmail.com', '464-724-5471', '1999-09-20', '2023-06-13', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Matthew', 'Edwards', 'fosterdavid@gmail.com', '346-799-8859', '2002-12-04', '2024-07-27', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Robert', 'Vega', 'carlos84@parsons.com', '891-622-9371', '2000-03-18', '2024-06-29', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Chelsea', 'Jackson', 'davidross@rivera.com', '(963)574-7323', '2001-08-20', '2023-02-04', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Bryan', 'Owens', 'fgarcia@kidd-davis.biz', '851-152-9614', '2001-06-05', '2020-06-10', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Evelyn', 'Clayton', 'stephensderek@mckenzie.net', '061-775-7246', '2000-12-27', '2021-05-14', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Patrick', 'Griffin', 'markjohnson@hotmail.com', '567-499-5158', '1994-10-16', '2020-01-06', 1);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Erika', 'Carter', 'desiree56@gmail.com', '990-027-5933', '1994-11-23', '2022-09-02', 3);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Adam', 'Lynch', 'markhamilton@morgan.com', '234-741-7521', '1998-08-29', '2023-04-09', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Aaron', 'Cortez', 'lopezanthony@dominguez-duran.com', '240.265.9954', '2006-07-08', '2020-02-26', 2);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Martin', 'Morgan', 'sanchezbarbara@gray-walton.info', '(612)064-7480', '2006-05-01', '2023-05-05', 4);
INSERT INTO students (first_name, last_name, email, phone, birth_date, enrollment_date, department_id) 
              VALUES ('Carla', 'Flowers', 'kimberlyhowe@gmail.com', '722-184-7489', '2001-12-11', '2023-01-26', 3);*/
              
              
/*ALTER TABLE students MODIFY phone VARCHAR(25);
ALTER TABLE instructors MODIFY phone VARCHAR(25);*/
             
             
             
			/*INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Dylan', 'Rodriguez', 'lewiselizabeth@davidson.net', '(263)536-1670', '2020-10-31', 4);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Gerald', 'Dunn', 'johnsondonna@hotmail.com', '(333)037-7139x114', '2020-10-18', 3);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Kathryn', 'Hanson', 'phillip02@yahoo.com', '+1-007-491-2885', '2023-11-21', 3);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Stephen', 'Atkins', 'rivasbenjamin@oliver.org', '911.168.5299', '2022-09-01', 4);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Deborah', 'Douglas', 'pamelajackson@gmail.com', '001-416-051-2557x5385', '2022-10-17', 2);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Sarah', 'Faulkner', 'ewilliams@bush.com', '+1-361-840-5991', '2024-07-21', 1);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Angela', 'Scott', 'lowelaurie@gmail.com', '035-840-7585x77545', '2023-09-20', 4);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Elizabeth', 'Stewart', 'hrobinson@hotmail.com', '(027)135-0530', '2024-10-26', 2);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Theresa', 'Richmond', 'brenda99@gmail.com', '437-543-4172', '2021-01-04', 1);
INSERT INTO instructors (first_name, last_name, email, phone, hire_date, department_id) 
              VALUES ('Jennifer', 'Newman', 'vpayne@yahoo.com', '+1-528-053-9827x79685', '2023-02-15', 5);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Introduction to Computer Science', 'C100', 4, 1, 7);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Business Ethics', 'C101', 3, 3, 9);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Engineering Fundamentals', 'C102', 5, 2, 7);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Calculus I', 'C103', 3, 5, 1);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Psychology Basics', 'C104', 3, 3, 3);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Database Management', 'C105', 4, 4, 7);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Marketing Strategies', 'C106', 4, 4, 8);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Physics for Engineers', 'C107', 3, 3, 10);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Linear Algebra', 'C108', 3, 1, 9);
INSERT INTO courses (course_name, course_code, credits, department_id, instructor_id) 
              VALUES ('Cognitive Psychology', 'C109', 3, 2, 4);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (9, 3, '2023-05-16', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (19, 7, '2025-01-10', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (1, 3, '2021-05-16', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (33, 7, '2021-07-05', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (24, 9, '2021-03-21', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (52, 5, '2023-09-03', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (34, 9, '2021-08-20', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (41, 4, '2023-09-04', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (31, 10, '2020-10-01', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (41, 1, '2021-03-09', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (16, 5, '2022-08-24', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (49, 8, '2021-12-05', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (12, 8, '2024-07-17', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (40, 3, '2022-12-01', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (31, 6, '2022-11-23', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (1, 1, '2021-05-10', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (37, 3, '2022-10-14', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (14, 4, '2020-10-17', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (54, 9, '2024-12-02', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (26, 2, '2024-01-22', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (55, 8, '2020-11-12', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (26, 6, '2020-04-21', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (22, 10, '2021-10-19', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (41, 1, '2023-05-06', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (2, 4, '2022-08-17', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (12, 10, '2021-06-20', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (40, 8, '2021-03-30', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (33, 6, '2021-08-23', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (13, 3, '2023-12-25', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (4, 5, '2021-01-07', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (8, 2, '2022-07-09', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (44, 4, '2020-10-01', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (17, 5, '2022-04-14', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (5, 10, '2021-05-23', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (35, 9, '2024-05-01', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (13, 10, '2021-10-31', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (11, 4, '2024-07-09', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (34, 9, '2022-04-17', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (27, 10, '2020-01-13', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (2, 7, '2021-08-19', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (48, 1, '2022-04-28', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (8, 3, '2025-01-20', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (23, 10, '2025-02-17', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (27, 3, '2021-01-23', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (54, 7, '2024-03-06', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (24, 4, '2024-08-24', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (31, 10, '2020-03-04', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (43, 1, '2023-09-07', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (6, 7, '2022-09-21', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (7, 2, '2020-10-23', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (10, 7, '2025-02-11', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (39, 1, '2023-01-30', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (10, 2, '2022-07-29', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (33, 1, '2020-10-08', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (19, 4, '2022-05-30', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (51, 10, '2022-10-21', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (9, 7, '2023-03-21', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (9, 5, '2022-01-05', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (26, 1, '2024-03-05', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (33, 10, '2022-12-08', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (24, 5, '2024-07-15', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (6, 7, '2021-09-07', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (54, 5, '2024-06-06', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (4, 9, '2022-03-09', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (15, 8, '2022-06-11', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (13, 3, '2024-05-31', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (1, 7, '2021-01-17', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (7, 8, '2023-08-31', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (6, 6, '2022-04-29', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (37, 7, '2023-04-26', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (43, 6, '2023-08-11', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (11, 2, '2020-04-02', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (21, 5, '2020-05-18', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (23, 10, '2020-02-26', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (16, 5, '2020-05-11', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (52, 5, '2020-06-03', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (7, 8, '2022-07-26', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (54, 3, '2021-10-18', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (30, 7, '2024-02-17', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (16, 2, '2021-01-13', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (21, 4, '2023-08-25', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (6, 7, '2021-07-04', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (11, 7, '2023-05-19', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (32, 4, '2021-08-13', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (3, 8, '2024-05-10', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (14, 2, '2023-03-20', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (40, 7, '2023-09-26', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (34, 2, '2021-09-24', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (18, 4, '2021-05-12', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (30, 8, '2020-06-17', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (31, 9, '2021-07-04', 'C');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (22, 10, '2023-10-29', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (21, 7, '2024-05-19', 'D');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (34, 1, '2024-10-12', 'F');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (5, 5, '2023-07-09', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (13, 3, '2020-03-16', 'A');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (22, 4, '2024-11-10', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (50, 7, '2023-05-23', 'B');
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (55, 2, '2024-04-08', NULL);
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) 
              VALUES (29, 2, '2022-08-16', 'F');
              
INSERT INTO departments (department_name, department_code) VALUES
('Computer Science', 'CS'),
('Business Administration', 'BA'),
('Engineering', 'ENG'),
('Mathematics', 'MATH'),
('Psychology', 'PSY');

UPDATE enrollments
SET `grade` = "W"
WHERE `grade` IS NULL;

SELECT *
FROM students;

SELECT * 
FROM instructors;

SELECT * 
FROM departments;

CREATE VIEW `Student Enrolment INFO` AS
SELECT 
s.student_id AS `Student ID`,
s.first_name AS `Student First Name`,
s.last_name AS `Student Last Name`,
c.course_Name AS `Course Name`,
i.first_name AS `instructors First Name`,
i.last_name AS `instructors Last Name`
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON s.student_id = c.course_id
INNER JOIN instructors i ON c.instructor_id = i.instructor_id
ORDER BY s.last_name;

CREATE VIEW `All Student INFO` AS
SELECT 
s.student_id AS `Student ID`,
s.first_name AS `Student First Name`,
s.last_name AS `Student Last Name`,
c.course_Name AS `Course Name`,
i.first_name AS `instructors First Name`,
i.last_name AS `instructors Last Name`
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON s.student_id = c.course_id
LEFT JOIN instructors i ON c.instructor_id = i.instructor_id
ORDER BY s.last_name;*/

/*SELECT count(`Course Name`) AS `Students Enrolled`
FROM `student enrolment info`;*/

/*SELECT sum(credits)
FROM courses*/


CREATE VIEW `Student Grades` AS
SELECT
    s.student_id AS `Student ID`,
    s.first_name AS `Student First Name`,
    s.last_name AS `Student Last Name`,
    c.course_name AS `Course Name`,
    e.grade AS `Student Grades`
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id  
INNER JOIN courses c ON e.course_id = c.course_id        
ORDER BY s.last_name;













