--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, s.salary
FROM employees
JOIN salary AS s
ON employees.emp_no = s.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'; 

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments
JOIN dept_manager as dm
ON departments.dept_no = dm.dept_no
JOIN employees as e
ON dm.emp_no = e.emp_no; 

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, d.dept_name
FROM employees
JOIN dept_emp as de
ON employees.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no; 

--List first name, last name, and sex for employees whose first name 
--is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'; 

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, d.dept_name
FROM employees
JOIN dept_emp as de
ON employees.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'; 

--List all employees in the Sales and Development departments, including 
--their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, d.dept_name
FROM employees
JOIN dept_emp as de
ON employees.emp_no = de.emp_no
JOIN departments as d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'; 

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT (emp_no) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;



