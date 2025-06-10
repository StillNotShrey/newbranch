create database newEMP;
use newEMP;

create table Info(
	id int primary key auto_increment,
    name varchar(50),
    job varchar(30),
    managerId int,
    salary decimal(10,2),
    department varchar(30),
    hireDate date
);

INSERT INTO Info (id, name, job, managerId, salary, department, hireDate) VALUES
(1, 'Alice Johnson', 'CLERK', NULL, 1300, 'RESEARCH', '1990-05-14'),
(2, 'Adam Smith', 'MANAGER', NULL, 5000, 'SALES', '1985-08-21'),
(3, 'Bob Martin', 'ANALYST', 2, 1400, 'RESEARCH', '1991-11-05'),
(4, 'Charlie Brown', 'CLERK', 2, 1200, 'ADMIN', '1995-01-10'),
(5, 'David Wilson', 'MANAGER', NULL, 5200, 'HR', '1987-03-18'),
(6, 'Emma Watson', 'CLERK', 5, 1250, 'SALES', '1996-07-22'),
(7, 'Andrew Carter', 'ANALYST', 2, 1380, 'RESEARCH', '1990-09-09'),
(8, 'Sophia Lee', 'MANAGER', NULL, 4800, 'RESEARCH', '1988-12-30'),
(9, 'Michael Clark', 'CLERK', 8, 1100, 'HR', '1993-06-05');


-- 1. List all employees whose name begins with 'A'. 
-- 2. Select all those employees who don't have a manager. 
-- 3. List employee name, number and salary for those employees who earn in the 
-- range 1200 to 1400. 
-- 4. Give all the employees in the RESEARCH department a 10% pay rise. Verify that 
-- this has been done by listing all their details before and after the rise. 
-- 5. Create a view called OLDTIMERS of employees who were hired before 1992. 
-- (Hint: use the TO_DATE function.) 
-- 6. Find the number of CLERKS employed. Give it a descriptive heading. 
-- 7. Find the average salary for each job type and the number of people employed in each job. 
-- 8. List the employee names, number of years with the company and the DAY they 
-- were hired on. 
-- 9. List the yearly salaries for the Managers. 
-- 10. List the employees with the lowest and highest salary. 

-- 1

-- select *
-- from Info
-- where name LIKE 'A%';


-- 2
-- select * from Info where managerId is null;

-- 3
-- select *
-- from Info
-- where salary between 1200 and 1400;

-- 4
 
-- SELECT * FROM Info WHERE department = 'RESEARCH';
-- UPDATE Info SET salary = salary * 1.1 WHERE department = 'RESEARCH';
-- SELECT * FROM Info WHERE department = 'RESEARCH';

-- 5

-- SELECT COUNT(*) AS newHead
-- FROM Info
-- WHERE job = 'CLERK';

-- 6

-- select (*) newNew
-- from Info
-- where hireDate >= '1992-01-01'


-- 7
-- SELECT job, AVG(salary) AS Avg_Salary, COUNT(*) AS Employee_Count FROM Info GROUP BY job;


-- select job, round(avg(salary),2) as avg_salary , count(*) as EmpCount
-- from Info
-- group by job

-- 8

-- select name, timestampdiff(year, hireDate, curdate()) as years_with_comp, dayname(hireDate) as Hire_d
-- from Info;

-- 9

-- select name, salary * 12 as newSal
-- from Info
-- where job = 'MANAGER'

-- 10

-- select *
-- from Info
-- order by salary desc
-- limit 1;

-- select * from Info;

CREATE DATABASE EmployeeManagement;
USE EmployeeManagement;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

INSERT INTO Employees VALUES
(101, 'John', 'Doe', 50000, 1),
(102, 'Jane', 'Smith', 60000, 2),
(103, 'Alice', 'Brown', 55000, 3


DELIMITER //

CREATE PROCEDURE GetEmployeesByDepartment(IN deptID INT)
BEGIN
    SELECT * FROM Employees WHERE DepartmentID = deptID;
END //

DELIMITER ;

CALL GetEmployeesByDepartment(2);

DELIMITER &&
CREATE PROCEDURE display_high_sal(OUT highsal INT)
BEGIN
    SELECT MAX(sal) INTO highsal FROM emp;
END &&
DELIMITER ;

CALL display_high_sal(@M);
SELECT @M AS MAXSAL;

DELIMITER //
create procedure getEmpCountBy(IN countryname varchar(50), OUT pempCount INT)
BEGIN
	select count(*) into pempCount FROM employee where country = countrynamel
end //
DELIMITER;

call getEmployee('USA', @pempCount);
select @pempCount as countrywiseEmp_Count;