CREATE DATABASE SchoolDB;
CREATE SCHEMA School;

CREATE TABLE School.Students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    major VARCHAR(50),
    gpa NUMERIC(3, 2)
);

INSERT INTO School.Students(name, age, major, gpa)
VALUES
('An', 20,'CNTT', 3.5),
('Bình', 21,'Toán', 3.2),
('Cường', 22,'CNTT', 3.8),
('Dương', 20,'Vật lý', 3.0),
('Em', 21,'CNTT', 2.9);
-- BTVN:
INSERT INTO School.Students(name, age, major, gpa)
VALUES
('Hùng', 23,'Hóa học', 3.4)

UPDATE School.Students SET gpa = 3.6 WHERE name = 'Bình';

DELETE FROM School.Students WHERE gpa < 3.0;

SELECT students.name, students.major FROM School.Students
ORDER BY students.gpa DESC;

SELECT students.name FROM School.Students
WHERE major = 'CNTT'
ORDER BY name
LIMIT 1;

SELECT * FROM School.Students
WHERE gpa BETWEEN 3.0 AND 3.6

SELECT * FROM School.Students
WHERE name LIKE 'C%';

SELECT * FROM School.Students
ORDER BY id ASC LIMIT 3;

SELECT * FROM School.Students
ORDER BY id ASC LIMIT 3
OFFSET 1;