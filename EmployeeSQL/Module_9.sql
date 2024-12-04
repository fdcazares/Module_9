SELECT	e.emp_no,
		e.last_name, 
		e.first_name,
		e.sex,
		s.salary
FROM employees AS e
	LEFT JOIN salaries AS s
	ON (e.emp_no = s.emp_no)
ORDER BY e.emp_no;

--1986
SELECT	first_name,
		last_name,
		hire_date
FROM employees
WHERE hire_date Between '01-01-1986' AND '12-31-1986';

--Manager
SELECT 	d.dept_no,
		d.dept_name,
		dm.emp_no,
		e.last_name,
		e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d 
		ON (dm.dept_no= d.dept_no)
	INNER JOIN employees As e 
		ON (dm.emp_no = e.emp_no);

--Departments
SELECT 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

--Hercules
select	first_name,
		last_name,
		sex
from employees
where	first_name = 'Hercules' AND last_name Like 'B%';

--Sales
select 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
From employees as e
	inner join dept_emp as de
		on (e.emp_no = de.emp_no)
	inner join departments as d
		on(de.dept_no = d.dept_no)
where d.dept_name = 'Sales'
order by e.emp_no;

--Sales & Development
select 	e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
From employees as e 
	inner join dept_emp as de
		on (e.emp_no = de.emp_no)
	inner join departments as d
		on (de.dept_no = d.dept_no)
where d.dept_name IN ('Sales','Development')
order by e.emp_no;

--Employee last name count
select last_name, count(last_name)
from employees
Group by last_name
order by count(last_name) desc;