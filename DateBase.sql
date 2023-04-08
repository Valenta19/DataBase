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
UPDATE employeeList SET firs_name = 'Teresa' , last_name = 'Blake',gender = 'female' ,age = 21 WHERE id = 2;
SELECT  * FROM employeeList;
DELETE FROM employeeList WHERE id = 1;
SELECT * FROM employeeList;
INSERT INTO employeeList(firs_name, last_name, GENDER, age)
VALUES ('Anna','Long', 'female', 25);
INSERT INTO employeeList(firs_name, last_name, GENDER, age)
VALUES ('Robert','Ramsey', 'male', 35);
INSERT INTO employeeList (firs_name, last_name, gender, age)
VALUES ('Billy', 'Strickland', 'male', 65);
SELECT * FROM employeeList;
SELECT
firs_name AS имя,
last_name AS фамилия
FROM employeeList;
SELECT * FROM employeeList
WHERE age <=30 OR age >=50;
SELECT * FROM employeeList
    WHERE age
BETWEEN 30 AND 50;
SELECT * FROM employeeList
    WHERE firs_name
LIKE   '%____%';
UPDATE employeeList SET firs_name = 'Juanita', last_name = 'Blake', gender = 'female', age = 21 WHERE id = 2;
UPDATE employeeList SET firs_name = 'Billy', last_name = 'Ramsey', gender = 'male', age = 35 WHERE id = 5;
SELECT firs_name,
 SUM(age) AS суммарный_возраст
FROM employeeList
    GROUP BY firs_name;
SELECT firs_name, age
FROM employeeList
WHERE  age = (
    SELECT MIN(age)
    FROM employeeList
    );
SELECT firs_name, age
FROM employeeList
WHERE age IN  (SELECT MAX(age) FROM employeeList
GROUP BY firs_name HAVING COUNT(firs_name) > 1)
ORDER BY 2;


-- DROP TABLE employeeList;