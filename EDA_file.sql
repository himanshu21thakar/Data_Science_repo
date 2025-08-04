CREATE DATABASE PracticeDB;
USE PracticeDB;

-- Employees Table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT
);

-- Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);

-- Projects Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100),
    start_date DATE,
    end_date DATE
);

-- Employee_Project Table (Many-to-Many)
CREATE TABLE Employee_Project (
    emp_id INT,
    project_id INT,
    role VARCHAR(50),
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Departments
INSERT INTO Departments (department_name)
VALUES ('HR'), ('IT'), ('Finance'), ('Marketing');

-- Employees
INSERT INTO Employees (first_name, last_name, email, phone, hire_date, job_title, salary, department_id)
VALUES
('Amit', 'Sharma', 'amit@example.com', '9876543210', '2022-01-10', 'Manager', 70000, 1),
('Priya', 'Patel', 'priya@example.com', '9123456780', '2023-05-15', 'Developer', 55000, 2),
('Rohan', 'Verma', 'rohan@example.com', '9988776655', '2021-11-20', 'Analyst', 60000, 3),
('Sneha', 'Desai', 'sneha@example.com', '9871234567', '2024-02-05', 'Designer', 50000, 4);

-- Projects
INSERT INTO Projects (project_name, start_date, end_date)
VALUES
('CRM System', '2024-01-01', '2024-06-30'),
('Website Redesign', '2024-03-15', '2024-08-15');

-- Employee_Project
INSERT INTO Employee_Project (emp_id, project_id, role)
VALUES
(2, 1, 'Lead Developer'),
(3, 1, 'Data Analyst'),
(4, 2, 'UI Designer');


