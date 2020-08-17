# sql-challenge

Pewlett Hackard needs a research project done on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files. In PostgreSQL, these CSV files will be used to create several tables to analyze the employee data.

After looking at the CSV's, an entity relational diagram was created to visualize how to structure the database. The dept_emp table did not have a column with unique data, so a composite key was created using both the emp_no and dept_no columns.
