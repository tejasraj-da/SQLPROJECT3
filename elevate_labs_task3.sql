use companydb;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Salary DECIMAL(10, 2),
    DepartmentID INT,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'HR');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Salary, DepartmentID, HireDate) VALUES
(101, 'Jane', 'Doe', 'jane.doe@example.com', 75000.00, 1, '2022-01-15'),
(102, 'John', 'Smith', 'john.smith@example.com', 68000.00, 2, '2021-03-22'),
(103, 'Alice', 'Johnson', 'alice.j@example.com', 90000.00, 1, '2020-05-10'),
(104, 'Bob', 'Brown', 'bob.brown@example.com', 55000.00, 3, '2022-07-30'),
(105, 'Charlie', 'Davis', 'charlie.d@example.com', 62000.00, 2, '2023-01-05');




SELECT
    EmployeeID AS ID,
    FirstName,
    LastName,
    Salary
FROM
    Employees
WHERE
    
    Salary BETWEEN 60000 AND 80000
    AND
    
    Email LIKE '%@example.com'
ORDER BY
    
    Salary DESC
LIMIT 5;




SELECT
    EmployeeID,
    FirstName,
    LastName,
    DepartmentID
FROM
    Employees
WHERE
    
    FirstName = 'Alice'
    OR
    DepartmentID IN (2, 3);
SELECT DISTINCT
    DepartmentID
FROM
    Employees;