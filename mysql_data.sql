CREATE DATABASE demo_intellipaat;
USE demo_intellipaat;
CREATE TABLE test(
Name varchar(15),
Age int,
Sex varchar(10)
);
INSERT INTO test VALUES('Rajesh',20,'M');
INSERT INTO test VALUES('Rohan',18,'M');
INSERT INTO test VALUES('Sneha',22,'F');
INSERT INTO test VALUES('Ananya',19,'F');
SET SQL_SAFE_UPDATES=0;
UPDATE test
SET Age='19'
WHERE Name='Rohan';
SELECT * FROM test;
DELETE FROM test 
WHERE Name='Rohan';
DROP DATABASE demo_intellipaat;