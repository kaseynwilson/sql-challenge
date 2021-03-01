# SQL Challenge - Employee Database

#### Background

This research project is on employees of the Pewlett Hackard corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this project I performed Data Engineering by designing the tables to hold data in the CSVs, import the CSVs into a SQL database, and then performed Data Analysis on the data. 

#### Data Modeling

I inspected the CSVs and sketched out an ERD of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

![Data Visualization](/Images/table_visualization.png)

#### Data Engineering

* I used the information to create a table schema for each of the six CSV files, including data types, primary keys and foreign keys. 

* Once the table schema was developed I imported each CSV file into the corresponding SQL table. 

#### Data Analysis

Once I had the complete database, I generated the following:

1. A list of the following details of each employee: employee number, last name, first name, sex, and salary.

![Employee Snapshot](/Images/1_employee_snapshot.png)

2. A list including first name, last name, and hire date for employees who were hired in 1986.

![Employees Hired 1986](/Images/2_employees_hired_1986.png)

3. A list of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![Department Manager Summary](/Images/3_dept_manager_summary.png)

4. A list of the department of each employee with the following information: employee number, last name, first name, and department name.

![Employee Department](/Images/4_employee_department.png)

5. A list including first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![Employee Hercules](/Images/5_employee_hercules.png)

6. A list of all employees in the Sales department, including their employee number, last name, first name, and department name.

![Employees Sales Department](/Images/6_employees_sales_dept.png)

7. A list of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![Employees Sales and Development](/Images/7_employees_sales_and_dev.png)

8. In descending order, a list of the frequency count of employee last names (i.e., how many employees share each last name).

![Last Name Count](/Images/8_last_name_count.png)
