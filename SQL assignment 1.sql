create database employee;
use employee;
create table Departments (Department_id INT, Department_name VARCHAR(100));
CREATE TABLE Location (Location_id INT,Location VARCHAR(30));
CREATE TABLE Employees(Employee_id INT,Employee_name VARCHAR(50),Gender enum("M","F"),Age INT,
Hire_date DATE,Designation VARCHAR(100),
Department_id INT,Location_id INT,Salary DECIMAL(10,2));


ALTER TABLE Employees ADD COLUMN email VARCHAR(30);
ALTER TABLE Employees MODIFY COLUMN Designation VARCHAR(250);
ALTER TABLE Employees DROP COLUMN Age;
ALTER TABLE  Employees RENAME COLUMN Hire_date to Date_of_joining;

RENAME TABLE Departments to Departments_info;
RENAME TABLE Location to Locations;

TRUNCATE TABLE Employees;
DESC Employees;

DROP TABLE Employees;
DROP DATABASE employee;

create database employee;
use employee;

create table Departments (Department_id INT UNIQUE,
Department_name VARCHAR(100) UNIQUE NOT NULL);
DROP TABLE Departments;
create table Departments (
    Department_id INT UNIQUE,
    Department_name VARCHAR(100) UNIQUE NOT NULL
);
MODIFY TABLE Departments Department_ID INT PRIMARY KEY;


CREATE TABLE Location (Location_id INT auto_increment PRIMARY KEY,
Location VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE Employees(Employee_id INT PRIMARY KEY,
Employee_name VARCHAR(50) NOT NULL,
Gender enum("M","F"),
Age INT CHECK(Age>=18),
Hire_date DATE DEFAULT (current_date),
Designation VARCHAR(100),
Department_id INT,
Location_id INT,
Salary DECIMAL(10,2));

DESC Employees;

MODIFY TABLE Employees CONSTRAINT fk_employee_department FOREIGN KEY(Department_id) REFERENCES Departments(Department_id),
CONSTRAINT fk_employee_location FOREIGN KEY (Location_id) REFERENCES Location(Location_id);
DROP TABLE Employees;

CREATE TABLE Employees(Employee_id INT PRIMARY KEY,
Employee_name VARCHAR(50) NOT NULL,
Gender enum("M","F"),
Age INT CHECK(Age>=18),
Hire_date DATE DEFAULT (current_date),
Designation VARCHAR(100),
Department_id INT,
Location_id INT,
Salary DECIMAL(10,2), 
CONSTRAINT fk_employee_department FOREIGN KEY(Department_id) REFERENCES Departments(Department_id),
CONSTRAINT fk_employee_location FOREIGN KEY (Location_id) REFERENCES Location(Location_id));

DESC Employees;