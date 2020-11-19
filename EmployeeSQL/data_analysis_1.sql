SELECT emp_no, first_name, last_name, sex 
FROM employees
INNER JOIN salaries ON
salaries.emp_no = employees.emp_no;

SELECT * FROM salaries
JOIN employees ON
first_name, last_name, sex