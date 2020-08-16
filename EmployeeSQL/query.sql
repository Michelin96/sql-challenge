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
	emp_no INT NOT NULL,
	dept_no VARCHAR(4)
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