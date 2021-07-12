CREATE TABLE employees (
	emp_no			integer PRIMARY KEY,
	emp_title_id	varchar(10),
	birth_date		date,
	first_name		varchar(40),
	last_name		varchar(40),
	sex				varchar(1),
	hire_date		date
);

CREATE TABLE departments (
	dept_no		varchar(10) PRIMARY KEY,
	dept_name	varchar(40)
);

CREATE TABLE titles (
	title_id	varchar(10) PRIMARY KEY,
	title		varchar(40)
);

CREATE TABLE salaries (
	emp_no	integer PRIMARY KEY,
	salary	numeric
);

CREATE TABLE dept_emp (
	emp_no		integer,
	dept_no		varchar(10),
	PRIMARY KEY(emp_no,dept_no),
	CONSTRAINT fk_emp
		FOREIGN KEY(emp_no)
			REFERENCES employees(emp_no),
	CONSTRAINT fk_dept
		FOREIGN KEY(dept_no)
			REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
	dept_no		varchar(10) PRIMARY KEY,
	emp_no		integer,
	CONSTRAINT fk_emp
		FOREIGN KEY(emp_no)
			REFERENCES employees(emp_no),
	CONSTRAINT fk_dept
		FOREIGN KEY(dept_no)
			REFERENCES departments(dept_no)
);