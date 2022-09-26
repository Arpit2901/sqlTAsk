create database dbpersoneloffice;
use dbpersoneloffice;

-- Employee Table
create table employee(emp_id int auto_increment primary key ,emp_name varchar(20), address varchar(30), gender varchar(10), contact_info varchar(12), D_O_B varchar(15), 
salary double, dept_id int, constraint fk_dept foreign key(dept_id)
references department(dept_id)); 
drop table employee;
insert into employee values(101,"Ram", "Banglore", "Male", "27137", "19-09-2000", 25000.00,904);
insert into employee values(102,"Sara", "Mumbai", "Female", "374137", "23-04-2001", 35400.00,902);
insert into employee values(103,"Shruti", "Chennai", "Female", "35322", "08-07-2000", 35000.00,901);
insert into employee values(104,"Sam", "Noida", "Male", "89728", "22-10-2000", 40000.00,903);
insert into employee values(105,"Aman", "Banglore", "Male", "543322", "24-01-2000", 47000.00,903);


-- Jobs Table
create table jobs(dept_id int not null,job_title varchar(20), job_description varchar(25),
constraint fk_dept_job foreign key(dept_id)
references department(dept_id)
);
insert into jobs values(901, "IT", "Installation");
insert into jobs values(902, "HR", "Comapny Works");
insert into jobs values(903, "SE", "Developer");
insert into jobs values(904, "Finance", "CA");
-- insert into jobs values(905, "IT", "Networking");
drop table jobs;
select * from jobs;

-- Department Table
create table department(dept_id int auto_increment primary key, dept_description varchar(20), contact_info numeric);
insert into department values(901, "IT operations", 78634733);
insert into department values(902, "HR recuritment", 6534334);
insert into department values(903, "Developer", 2354345);
insert into department values(904, "Accounts & payroll", 7943793);
drop table department;

select * from employee;
select * from department;
select * from jobs;

-- creating address table to normalize employee
create table address(address_id int primary key,city varchar(20), pincode numeric);
insert into address values(201,"Banglore", 21793);
insert into address values(202,"Mumbai", 21543);
insert into address values(203,"Noida", 21123);
insert into address values(204,"Chennai", 09234);
select * from address;


show engines;
show databases;
show tables;