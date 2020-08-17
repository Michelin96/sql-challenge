-- Create all the employee data tables
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR (1),
	hire_date DATE
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INT NOT NULL
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT
);

CREATE TABLE departments(
	dept_no VARCHAR(4),
    dept_name VARCHAR(20)
);

CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(20)
);

-- List the following details of each employee:
-- employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
--Add the salary data to the info from the employee table
INNER JOIN salaries s ON
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.


