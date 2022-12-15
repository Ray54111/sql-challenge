--needed to update the tables so I dropped 
drop table departments;
drop table dept_emp;
drop table dept_manager;
drop table salaries;
drop table employees;
drop table titles;



create table departments(
dept_no varchar(4) not null Primary Key,
dept_name varchar(25) not null
);


create table titles(
title_id varchar(6) not null primary key,
title varchar(20) not null
);

create table employees(
emp_no integer not null primary key,
emp_title_id varchar(5) not null,
birth_date varchar(10) not null,
first_name varchar(20) not null,
last_name varchar(20) not null,
sex varchar(1) not null,
hire_date varchar(10) not null,
foreign key (emp_title_id) references titles(title_id)
);

create table dept_emp(
emp_no integer not null,
dept_no varchar(4) not null,
foreign key (emp_no) references employees(emp_no)
);

create table dept_manager(
dept_no varchar(4) not null,
emp_no integer not null,
foreign key (emp_no) references employees(emp_no)
);


create table salaries(
emp_no integer not null,
salary integer not null,
foreign key (emp_no) references employees(emp_no)
);



select * from salaries


