use ltimDB;

create table Departments(
	Id int auto_increment PRIMARY KEY,
    departmentName varchar(100) not null unique
);

CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (Id) REFERENCES Departments(Id)
);






