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
-- Thanks to javapoint.com for the tip on selecting from the date data type.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date <= '1986-12-31' AND hire_date >= '1986-01-01';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
--Add the department managers to the info from the employee table
INNER JOIN dept_manager dm ON
e.emp_no=dm.emp_no
--Add the departments to the info from the employee table
INNER JOIN departments d ON 
d.dept_no=dm.dept_no;

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
--Add the department employees to the info from the employee table
INNER JOIN dept_emp de ON
e.emp_no=de.emp_no
--Add the departments to the info from the employee table
INNER JOIN departments d ON
d.dept_no=de.dept_no;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%'