create database CRUD;
use  CRUD;
show tables;
create table User(comapnyId int primary key, name varchar(50), Address varchar(50), turnover long,date date);
select *from User;
ALTER TABLE User MODIFY date varchar(10);
insert into User value(101,"Arpit",2000,"ghaziabad","22-09-8289");
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Bhavna@123';
 select version(); 