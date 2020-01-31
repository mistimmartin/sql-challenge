CREATE table employees (
	emp_no INT primary key not null,
	birth_date Date not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	gender varchar not null,
	hire_date Date);

CREATE table departments (
	dept_no varchar(10) primary key not null,
	dept_name varchar(30) not null);
	
CREATE table dept_manager(
	dept_no varchar(5) not null,
	emp_no INT not null,
	from_date Date,
	to_date Date);
	
CREATE table dept_emp(
	emp_no INT not null,
	dept_no varchar(10) not null,
	from_date Date,
	to_date Date);
	
CREATE table titles (
	emp_no INT not null,
	title varchar(30) not null,
	from_date Date,
	to_date Date);
	
CREATE table salaries (
	emp_no INT not null,
	salary INT not null,
	from_date Date,
	to_date Date);