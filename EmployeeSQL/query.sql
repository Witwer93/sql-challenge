CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	department VARCHAR
);
Create TABLE dept_emp (
	emp_no int,
	dept_no VARCHAR
	
);
CREATE TABLE managers (
	emp_no VARCHAR,
	
	dept_no VARCHAR
	
);
CREATE TABLE salaries (
	emp_no VARCHAR,
	
	salary bigint
);
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);
CREATE TABLE employees (
	emp_no int PRIMARY KEY,
	
	emp_title VARCHAR,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id),
	birth_date date,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date date
);