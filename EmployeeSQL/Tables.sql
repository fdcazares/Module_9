CREATE TABLE titles (
	title_id VARCHAR not null,
	title varchar not null, 
	primary key (title_id)
);
Create Table employees (
	emp_no int not null, 
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null, 
	last_name varchar not null, 
	sex varchar not null,
	hire_date date not null,
	Foreign Key (emp_title_id) references titles (title_id),
	primary key (emp_no)
);

Create Table departments ( 
	dept_no varchar not null, 
	dept_name varchar not null,
	Primary Key (dept_no)
);

Create Table dept_manager (
	dept_no varchar not null, 
	emp_no int not null, 
	FOREIGN KEY (emp_no) References employees (emp_no),
	FOREIGN KEY ( dept_no) REFERENCES departments (dept_no),
	Primary KEY (dept_no, emp_no)
);

Create Table dept_emp (
	emp_no int not null,
	dept_no varchar not null, 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no,dept_no)
);

Create Table salaries (
	emp_no int not null,
	salary int not null, 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	Primary KEY (emp_no)
);
