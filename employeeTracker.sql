-- DROP DATABASE IF EXISTS employees_db;

-- CREATE DATABASE employees_db;

-- USE employees_db;

-- --EMPLOYEE TABLE
-- CREATE TABLE employee (
--  employee_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

--  first_name VARCHAR(30) NOT NULL,
--  last_name VARCHAR(30) NOT NULL,
 
--  role_id INT NULL,
--  manager_id INT NULL;

-- -- FOREIGN KEYS for employee
-- CONSTRAINT fk_role FOREIGN KEY (role_id),
-- CONSTRAINT fk_manager FOREIGN KEY (manager_id);
-- );

-- --Employees
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("John", "Smith",1, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Jessica", "Parker",2, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Michael", "Scott",3, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Dwight", "Schrute",4, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Pam", "Beesly",5, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Kevin", "Malone",6, NULL);
-- INSERT INTO employee (first_name, last_name, role_id, manager_id)
-- VALUES ("Angela", "Martin",7, NULL);




-- --ROLE TABLE
-- CREATE TABLE role (
-- role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

-- title VARCHAR(30) NOT NULL,
-- salary DECIMAL(10) NOT NULL,

-- department_id INT,

-- --FOREIGN KEYS for Role
-- CONSTRAINT fk_department FOREIGN KEY (department_id)
-- );
-- --Sales
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Sales Team Lead", 100000,1);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Salesperson", 50000,1);
-- --Finance
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Accountant", 80000,2);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Lead Finance Manager", 120000,2);
-- --Engineering
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Software Engineer", 100000,3);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Lead Engineer", 100000,3);
-- --Legal
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Lawyer", 150000,4);
-- INSERT INTO role (title, salary, department_id)
-- VALUES ("Legal Aide", 50000,4);


-- --DEPT TABLE
-- CREATE TABLE department (
-- deptartment_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

-- name VARCHAR(30) NOT NULL;
-- --   need to add possible FK
-- );

-- --DEPT name values
-- INSERT INTO department (name)
-- VALUES ("Sales"), ("Finance"), ("Engineering"), ("Legal");
DROP DATABASE IF EXISTS employees_db;

CREATE DATABASE employees_db;

USE employees_db;


CREATE TABLE department (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(30) NOT NULL

);


INSERT INTO department (name)
VALUES ("Sales"), ("Finance"), ("Engineering"), ("Legal");

CREATE TABLE role (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

title VARCHAR(30) NOT NULL,
salary DECIMAL(10) NOT NULL,

department_id INT,

FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Team Lead", 100000,1);
INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 50000,1);

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 80000,2);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Finance Manager", 120000,2);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 100000,3);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 100000,3);

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 150000,4);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Aide", 50000,4);


CREATE TABLE employee (
 id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

 first_name VARCHAR(30) NOT NULL,
 last_name VARCHAR(30) NOT NULL,
 
 role_id INT NULL,
 manager_id INT NULL,


FOREIGN KEY (role_id) REFERENCES role(id),
FOREIGN KEY (manager_id) REFERENCES employee(id)

);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("John", "Smith",1, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jessica", "Parker",2, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Michael", "Scott",3, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dwight", "Schrute",4, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Pam", "Beesly",5, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Kevin", "Malone",6, NULL);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Angela", "Martin",7, NULL);

UPDATE employee SET manager_id = 1 WHERE id = 5;
UPDATE employee SET manager_id = 1 WHERE id = 4;
UPDATE employee SET manager_id = 1 WHERE id = 3;
 
