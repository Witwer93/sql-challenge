DATA ANALYSIS 1

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

---------------------------------------------------------------------------------
DATA ANALYSIS 2

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE 
		hire_date > '12/31/1985' 
	AND hire_date < '1/1/1987';

-----------------------------------------------------------------------------------
DATA ANALYSIS 3

SELECT m.dept_no, d.department, m.emp_no, e.last_name, e.first_name
FROM managers AS m
INNER JOIN departments AS d ON m.dept_no = d.dept_no
INNER JOIN employees AS e ON m.emp_no = e.emp_no;

------------------------------------------------------------------------
DATA ANALYSIS 4

SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
ORDER BY d.department

------------------------------------------------------------------------
DATA ANALYSIS 5

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE(
		e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%'
	)

------------------------------------------------------------------------
DATA ANALYSIS 6

SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE(d.department='Sales')

--------------------------------------------------------------------------
DATA ANALYSIS 7
