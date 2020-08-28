-- creating tables for PH-EmployeeDB
create table departments (
	dept_no Varchar(4) not null,
	dept_name varchar(40) Not null,
	primary key (dept_no),
	unique (dept_name)
);

create table employees (
	emp_no int  not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gneder varchar not null,
	hire_date date not null,
	primary key (emp_no)
);

create table dept_manager (
	dept_no varchar not null,
	emp_no varchar not null,
	from_date varchar not null,
	to_date varchar not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no), 
	primary key (emp_no, dept_no)
);

create table salaries (
	emp_no varchar not null,
	salary float not null,
	from_date date not null,
	tp_date date not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no, dept_no)
);

create table titles(
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	tp_date date not null,
	foreign key (emp_no) references employees (emp_no)
);

