show databases;
use ltimDB;

CREATE TABLE employee (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    Salary DECIMAL(10,2),
    dateOFjoining DATE,
    timeOFjoining TIME,
    Notes TEXT
);

INSERT INTO employee (firstName, lastName, Salary, dateOFjoining, timeOFjoining, Notes) 
VALUES ('Alice', 'Brown', 65000.00, '2023-06-25', '09:00:23', 'Senior Dev');

INSERT INTO employee (firstName, lastName, Salary, dateOFjoining, timeOFjoining, Notes) 
VALUES 
('John', 'Doe', 55000.00, '2022-08-15', '08:30:00', 'Junior Dev'),
('Emma', 'Smith', 72000.00, '2021-05-20', '10:15:45', 'Lead Developer'),
('James', 'Taylor', 80000.00, '2020-11-01', '11:00:00', 'Senior Dev'),
('Olivia', 'Johnson', 60000.00, '2023-01-10', '09:45:10', 'QA Engineer'),
('Liam', 'Miller', 75000.00, '2019-03-12', '07:50:00', 'Project Manager');


-- Select all records from the employee table to verify the data

create table empDUp as select * from employee;
alter table employee add instructor varchar(50);
alter table employee modify instructor decimal(3,1);

truncate table employee;
drop table employee;
describe employee;
