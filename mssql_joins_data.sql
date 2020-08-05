CREATE DATABASE intellipaat_happy;
USE intellipaat_happy;
CREATE TABLE employee(
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);
CREATE TABLE department(
d_id int not null,
d_name varchar(20),
d_location varchar(20)
);
INSERT INTO employee VALUES(1,'Sam',95000,45,'Male','Operations');
INSERT INTO employee VALUES(2,'Bob',80000,21,'Male','Support');
INSERT INTO employee VALUES(3,'Anne',125000,25,'Female','Analytics');
INSERT INTO employee VALUES(4,'Julia',73000,30,'Female','Analytics');
INSERT INTO employee VALUES(5,'Matt',159000,33,'Male','Sales');
INSERT INTO employee VALUES(6,'Jeff',112000,27,'Male','Operations');
INSERT INTO department VALUES(1,'Content','New York');
INSERT INTO department VALUES(2,'Support','Chicago');
INSERT INTO department VALUES(3,'Analytics','New York');
INSERT INTO department VALUES(4,'Sales','Boston');
INSERT INTO department VALUES(5,'Tech','Dallas');
INSERT INTO department VALUES(6,'Finance','Chicago');
DESC employee;
SELECT * FROM employee;
SELECT * FROM department;
/*INNER JOIN*/
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
INNER JOIN department d 
ON e.e_dept=d.d_name;
/*LEFT OUTER JOIN*/
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
LEFT JOIN department d 
ON e.e_dept=d.d_name;
/*RIGHT OUTER JOIN*/
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
RIGHT JOIN department d 
ON e.e_dept=d.d_name;
/*FULL OUTER JOIN*//*MYSQL DO NOT SUPPORT FULL OUTER JOIN*/
/*
SELECT e.e_name, e.e_dept, d.d_name, d.d_location
FROM employee e
FULL JOIN department d 
ON e.e_dept=d.d_name;
*/
SELECT * FROM employee e
LEFT JOIN department d ON e.e_dept = d.d_name
UNION
SELECT * FROM employee e
RIGHT JOIN department d ON e.e_dept = d.d_name;
/*UNION*/

DROP DATABASE intellipaat_happy;