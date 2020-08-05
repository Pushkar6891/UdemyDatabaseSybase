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
INSERT INTO employee VALUES(1,'Sam',95000,45,'Male','Operations');
INSERT INTO employee VALUES(2,'Bob',80000,21,'Male','Support');
INSERT INTO employee VALUES(3,'Anne',125000,25,'Female','Analytics');
INSERT INTO employee VALUES(4,'Julia',73000,30,'Female','Analytics');
INSERT INTO employee VALUES(5,'Matt',159000,33,'Male','Sales');
INSERT INTO employee VALUES(6,'Jeff',112000,27,'Male','Operations');
DESC employee;
SELECT * FROM employee;
SELECT e_name FROM employee;
SELECT e_age FROM employee;
SELECT e_name, e_gender, e_salary FROM employee;
SELECT e_gender FROM employee;
SELECT DISTINCT e_gender FROM employee;
SELECT * FROM employee WHERE e_gender='Female';
SELECT * FROM employee WHERE e_age<=30;
SELECT * FROM employee WHERE e_salary>100000;
SELECT * FROM employee WHERE e_gender='Male' AND e_age<30;
SELECT * FROM employee WHERE e_dept='Operations' AND e_salary>100000;
SELECT * FROM employee WHERE e_dept='Operations' OR e_dept='Analytics';
SELECT * FROM employee WHERE e_salary>100000 OR e_age>30;
SELECT * FROM employee WHERE NOT e_gender='Female'; 
SELECT * FROM employee WHERE NOT e_age<30; 
SELECT * FROM employee WHERE e_name LIKE 'J%';
SELECT * FROM employee WHERE e_age LIKE '3_';
SELECT * FROM employee WHERE e_age BETWEEN 25 AND 35;
SELECT * FROM employee WHERE e_salary BETWEEN 90000 AND 120000;
SELECT min(e_age) FROM employee;
SELECT min(e_salary) FROM employee;
SELECT max(e_age) FROM employee;
SELECT max(e_salary) FROM employee;
SELECT count(*) FROM employee WHERE e_gender='Male';
SELECT count(*) FROM employee WHERE e_gender='Female';
SELECT sum(e_salary) FROM employee;
SELECT avg(e_age) FROM employee;
SELECT '        PUSHKAR';
SELECT ltrim('        PUSHKAR');
SELECT 'THIS IS SPARTA';
SELECT lower('THIS IS SPARTA'); 
SELECT 'hello world';
SELECT upper('hello world');
SELECT 'i love icecream';
SELECT reverse('i love icecream');
SELECT 'this is sparta';
SELECT substring('this is sparta',9,6);
SELECT * FROM employee ORDER BY e_salary;
SELECT * FROM employee ORDER BY e_salary DESC;
SELECT * FROM employee ORDER BY e_salary DESC LIMIT 3;
SELECT * FROM employee ORDER BY e_age DESC LIMIT 2;
SELECT avg(e_salary), e_gender FROM employee GROUP BY e_gender;
SELECT avg(e_age), e_dept FROM employee GROUP BY e_dept ORDER BY avg(e_age) DESC;
SELECT e_dept, avg(e_salary) AS avg_salary FROM employee GROUP BY e_dept HAVING avg(e_salary)>100000;
UPDATE employee set e_age=42 WHERE e_name='Sam';
UPDATE employee set e_dept='Tech' WHERE e_gender='Female';
DELETE FROM employee WHERE e_age=33;
DELETE FROM employee WHERE e_name='Sam';
TRUNCATE TABLE employee;
DROP DATABASE intellipaat_happy;
UPDATE employee set e_salary=125000 WHERE e_name='Anne';