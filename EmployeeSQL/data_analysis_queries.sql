
-- Data analysis 1
-- List the following details of each employee:
-- employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

SELECT * FROM salaries;

SELECT * FROM managers;

SELECT * FROM employees;

SELECT * FROM departments;

-- Data analysis 2
-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE 
		hire_date > '12/31/1985' 
	AND hire_date < '1/1/1987';
	
-- Data analysis 3
-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
	
SELECT m.dept_no, d.department, m.emp_no, e.last_name, e.first_name
FROM managers AS m
INNER JOIN departments AS d ON m.dept_no = d.dept_no
INNER JOIN employees AS e ON m.emp_no = e.emp_no;

-- Data analysis 4
-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
ORDER BY d.department

-- Data analysis 5
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE(
		e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%'
	)

-- Data analysis 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
	
SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE(d.department='Sales')

--Question 7
--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE(d.department='Sales'
	 OR d.department='Development')
	 
-- Data analysis 8
-- in descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employees.last_name,
COUNT (employees.last_name) AS name_frequency
FROM employees
GROUP BY employees.last_name
ORDER BY name_frequency DESC
	 