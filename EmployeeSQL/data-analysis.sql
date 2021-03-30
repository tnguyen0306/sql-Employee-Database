--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees as e
JOIN salaries as s
ON s.emp_no = e.emp_no
ORDER BY e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT 
	d.dept_no, 
	d.dept_name, 
	dm.emp_no, 
	e.last_name, 
	e.first_name 
FROM departments as d
JOIN dept_manager as dm
ON d.dept_no = dm.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no
ORDER BY d.dept_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 
	e.emp_no, 
	e.last_name, 
	e.first_name,
	d.dept_name
FROM employees as e
JOIN dept_emp as de
ON de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no
ORDER BY e.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


--List all employees in the Sales department, including their employee number, last name, first name, and department name.


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.