select * from employees;

select * from departments;

select * from dept_emp;


--Create chart of employees with salary.
select employees.emp_no, employees.last_name
	, employees.first_name, employees.sex
	,salaries.salary
from employees
inner join salaries using (emp_no)

--Create chart of people hired in 1986.
select first_name
	, last_name
	, hire_date
from employees
where hire_date like '%1986%'


--Create chart of manager information.
select dept_no, dept_name, emp_no, last_name, first_name
from dept_manager
inner join departments using (dept_no)
inner join employees using (emp_no)

--Create a chart of department information with employees in those departments.
select dept_no, emp_no, last_name, first_name, dept_name
from departments
inner join dept_manager using (dept_no)
inner join employees using (emp_no)

--Find employeers with first name of 'Hercules' and last name starts with 'B'.
select first_name
	, last_name
	, sex
from employees
where first_name like 'Hercules%' 
	and
	last_name like 'B%'

--Create a list of employees in the Sales Department.
select emp_no 
	, first_name
	, last_name
from employees 
inner join dept_emp using (emp_no)
inner join departments using (dept_no)
where dept_name = 'Sales'

--Create list of employees in Sales and Development departments.
select emp_no 
	, first_name
	, last_name
	, dept_name
from employees 
inner join dept_emp using (emp_no)
inner join departments using (dept_no)
where dept_name = 'Sales'
	or dept_name='Development'
	
--List of frequency counts in descending order based on last names.
SELECT last_name, COUNT(last_name) AS "employees name count"
FROM employees
GROUP BY last_name
ORDER BY "employees name count" DESC;


