-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(20),
    PRIMARY KEY(title_id)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL,
    salary DECIMAL(10, 2),
    employees_emp_no INTEGER UNIQUE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL UNIQUE,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4),
    employees_emp_no INTEGER UNIQUE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS dept_emp
(
    employees_emp_no INTEGER UNIQUE,
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(4),
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(20),
    PRIMARY KEY(dept_no)
);


-- Create FKs
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES dept_emp(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_no)
    REFERENCES dept_emp(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES salaries(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE departments
    ADD    FOREIGN KEY (dept_no)
    REFERENCES dept_manager(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD    FOREIGN KEY (emp_no)
    REFERENCES dept_manager(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE employees
    ADD CONSTRAINT FK_titles
    FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD CONSTRAINT FK_departments
    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD CONSTRAINT FK_departments
    FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE salaries
    ADD    FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE salaries
    ADD CONSTRAINT FK_employees
    FOREIGN KEY (employees_emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_emp
    ADD CONSTRAINT FK_employees
    FOREIGN KEY (employees_emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE dept_manager
    ADD CONSTRAINT FK_employees
    FOREIGN KEY (employees_emp_no)
    REFERENCES employees(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes

