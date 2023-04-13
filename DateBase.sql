CREATE DATABASE skypro;
CREATE TABLE employeeList
(
    id BIGSERIAL NOT NULL PRIMARY KEY ,
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
ALTER TABLE employeeList
    ADD id_city BIGSERIAL UNIQUE;
CREATE TABLE city(
                     id BIGSERIAL NOT NULL PRIMARY KEY,
                     id_city BIGSERIAL UNIQUE,
                     city_name VARCHAR(50) NOT NULL,
                     FOREIGN KEY (id_city) REFERENCES employeeList(id_city)
);


INSERT INTO city ( city_name)
VALUES ( 'Kazan');
INSERT INTO city( city_name )
VALUES ( 'Moscow');
INSERT INTO city( city_name)
VALUES ('Saint Petersburg');
INSERT INTO city( city_name)
VALUES ( 'Ekaterinburg');
INSERT INTO city( city_name)
VALUES ( 'Samara');
SELECT firs_name, last_name, city
FROM employeeList
         INNER JOIN city
                    ON employeeList.id_city = city.id_city;
SELECT firs_name, last_name, city_name
FROM employeeList
         RIGHT  JOIN city
                     ON employeeList.id = city.id_city;


SELECT firs_name, last_name, city_name
FROM employeeList
         FULL OUTER  JOIN city
                          ON employeeList.id = city.id_city;

UPDATE city SET id = 6 WHERE id = 1;
SELECT firs_name, city_name
FROM employeeList
         FULL OUTER  JOIN city
                          ON employeeList.id = city.id;
SELECT firs_name, city_name
FROM employeeList
         RIGHT JOIN city
                    ON city.id  = employeeList.id WHERE employeeList.firs_name IS NULL;