# sql-challenge

Pewlett Hackard needs research to be done on employees of the corporation from the 1980s and 1990s. All that remains of the employees database from that period are six CSV files. In PostgreSQL, these CSV files were used to create tables to analyze the employee data.

After a preliminary review of the CSV's, an entity relational diagram (ERD_pewlett_hackard.jpeg) was created to visualize the structure of the database. The dept_emp and dept_manager files did not have a column with unique data. Composite primary keys were created for these tables using both the emp_no and dept_no columns.

## Using The Pewlett Hackard Database System

* Create a new database in PostgreSQL. Open a new Tables Query Tool window. Run the code from schema.sql in the Query Editor to create the tables and keys for the database.

* Import the CSV files from the data folder to the correspoinging tables in the following order: titles, departments, employees, salaries, dept_manager, dept_emp

* Query.sql contains several SQL queries regarding the employee data. Copy the desired query to the Query Editor and run it on the database:
    1.  Identification (name, number, and gender) for all employees and their salary
    2.  Employees hired in 1986
    3.  Department Managers and the departments they manage
    4.  The name of each employee and their department
    5.  Employees with the last name of 'Hercules' whose first name begins with 'B'
    6.  All the employees in the Sales department
    7.  All the employees in the Sales or Development departments
    8.  Last names grouped by how often they occur, with the most frequent first
