SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

SELECT * FROM salaries;

SELECT * FROM managers;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE 
		hire_date > '12/31/1985' 
	AND hire_date < '1/1/1987';
	
	
SELECT m.dept_no, d.department, m.emp_no, e.last_name, e.first_name
FROM managers AS m
INNER JOIN departments AS d ON m.dept_no = d.dept_no
INNER JOIN employees AS e ON m.emp_no = e.emp_no;


SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
ORDER BY d.department


SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE(
		e.first_name = 'Hercules' 
	AND e.last_name LIKE 'B%'
	)
	
SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE(d.department='Sales')

SELECT e.emp_no, e.last_name, e.first_name, d.department
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE(d.department='Sales'
	 OR d.department='Development')
	 
n descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employees.last_name,
COUNT (employees.last_name) AS name_frequency
FROM employees
GROUP BY employees.last_name
ORDER BY name_frequency DESC
	 