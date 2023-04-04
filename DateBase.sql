CREATE DATABASE skypro;
CREATE TABLE employeeList
(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    firs_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(6) NOT NULL,
    age INT NOT NULL
);
INSERT INTO employeeList (firs_name, last_name, gender, age)
VALUES ('Billy', 'Strickland', 'male', 25);
INSERT INTO employeeList(firs_name, last_name, gender, age)
VALUES ('Esther', 'Peters', 'male', 32);
INSERT INTO employeeList(firs_name, last_name, gender, age)
VALUES ('Juanita', 'Gray', 'female', 23);
SELECT  * FROM employeeList;
UPDATE employeeList SET firs_name = 'Juanita' , last_name = 'Gray',gender = 'female' ,age = 23 WHERE id = 2;
SELECT  * FROM employeeList;
DELETE FROM employeeList WHERE id = 1;
SELECT * FROM employeeList;