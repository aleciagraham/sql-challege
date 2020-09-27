--Create an employee table(ALTER TABLE AT THE END OF TABLE LOADS). Need to set up all other tables then add the following 
--Foreign key for emp_title_id; 

CREATE TABLE employees (
  emp_no INT PRIMARY KEY,
  emp_title_id VARCHAR(10),
  birth_date DATE,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  sex VARCHAR(1),
  hire_date DATE
);

ALTER TABLE employees
add salaries 

--creating salaries table

CREATE TABLE salaries (
	emp_no INT,
	salaries INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE SET NULL
	);


-- creating table to link manager to employee and dept no. fk with be on dept_no to link to departments and link back to employees db on the emp#

CREATE TABLE dept_manager (
  	dept_no VARCHAR(10),
	emp_no INT ,

	FOREIGN KEY(emp_no) REFERENCES employees(emp_no) ON DELETE SET NULL
);

--creating table for employee's dept numbers, foreign key on dept_no to link to departments.csv
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR PRIMARY KEY
	
	);

select * from dept_emp
--creating table for departments.csv, making dept no PK to link with dept_csv

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR (100),
	FOREIGN KEY(dept_no) REFERENCES dept_emp(dept_no) ON DELETE SET NULL
	);
	
--creating table to add to emp titles. PK title_id to then create columns to employee table to add titles so emp_title_id 

CREATE TABLE titles(
	title_id VARCHAR (10) PRIMARY KEY,
	title VARCHAR (100)
		);
		
		
SELECT * FROM dept_emp

