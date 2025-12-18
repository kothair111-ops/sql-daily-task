create Database Employees;
Use Employees;
Create table Departments(
Department_Id Int,
Department_Name Varchar(100)
);

Create table locations(
location_Id Int,
location varchar(30)
);

Create table Employees(
employee_Id Int,
employee_name Varchar(50),
gender enum("M","F"),
age Int,
hire_date date,
designation varchar(100),
department_Id Int,
location_Id int,
salary decimal(10,2)
);

-- Table Alteration(Alter) Create a new column named email 
Alter Table employees
Add column email varchar(50);

-- Modify the data type of the designation column in employees
Alter table employees
modify column designation varchar(150);

-- Drop the age column from the Employees table 
Alter table employees
Drop column age;

-- Rename the hire_date column to data_of_joining
Alter table employees 
Rename column hire_date to data_of_joining;

-- Table Renaming(Rename) Create a Department name to Department_info
Rename Table departments to Departments_Info;
-- Table Renaming(Rename) Create a Locations table to Location
Rename Table locations to Location;

-- Table Truncation(truncate)
Truncate table Employees;

-- Database & Table Dropping(Drop)
Drop Table employees;
Drop Database employees;

-- Constraints--

-- Database Recreation--
create Database Employees;
Use Employees;

-- Department Table--
-- Ensure that the department_id uniquely identifies each department
-- setup constraints on the department_name to avoid duplicate and null entries
Create table Departments(
Department_Id  Int primary key unique,
Department_Name Varchar(100) Not null unique
);

-- location Table--
-- use the constraints unique for each location
-- use null and duplicate for locationd
Create table locations(
location_Id Int unique auto_increment,
location varchar(30) Not null unique
);

-- Employee table--
-- use the constraints in employee table
Create table Employees(
employee_Id Int primary key auto_increment,
employee_name Varchar(50) Not null,
gender enum("M","F"),
age Int check (age>=18),
hire_date date default "2025-11-10",
designation varchar(100) Not Null,
department_Id Int,
location_Id int,
salary decimal(10,2),
Foreign Key(Department_Id) References Departments(Department_Id),
Foreign Key(location_Id) References Locations(Location_Id)
);
Select*From Employees



