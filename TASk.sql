create database DphoneCorp;
use  DphoneCorp;
show tables;
desc buyingdetails;
create table User(userId int primary key, name varchar(50), Address varchar(50), email varchar(10),mobile varchar(10), username varchar(50),password varchar(10), referpoints int);
create table Referral( referalId int primary key , referralname varchar(20), mobile varchar(10), email varchar(50), userId int , datereferral Date, status boolean DEFAULT -0 , foreign key(userId) references User(userId));
create table Customer(custId int primary key, name varchar(20), email varchar(50), mobile varchar(10));
create table BuyingDetails( custId int,userId int,purchase date, productName varchar(10), Foreign key(custId) references Customer(custId),Foreign key(userId) references User(userId) );

/*User Table input*/
insert into User values(101, 'Arpit verma', 'Ghazibad','abc@gmail','436734576','arpit2901','av@123',0);
insert into User values(102, 'ram verma', 'Noida','ram@gmail','677861387','ram2901','av@123',500);
insert into User values(103, 'sham kumar', 'pune','sham@gmail','567890987','sham2901','cv@123',000);
insert into User values(104, 'mohan singh', 'chennai','moh@gmail','34567898','moh2901','vv@123',1000);
select * from User;

/*Referral Table input*/
insert into Referral values(051, 'Mohit','45678987','mohc@gmail',101,'2021-12-11',false);
insert into Referral values(052, 'Rohit','99998987','rohc@gmail',101,'2021-09-11',false);
insert into Referral values(053, 'Sohit','99118987','sohc@gmail',104,'2020-12-11',true);
insert into Referral values(054, 'Joe','991108987','joe@gmail',104,'2020-06-30',false);
insert into Referral values(055, 'Doe','991105587','Doe@gmail',102,'2022-09-21',true);
/**/
/*Display total number of referral done by particular user by userId.*/
select * from Referral where userId=104; 
/*Display name and mobile of user whose referral customer have purchased item on 21/09/2022*/
select u.name,u.mobile,r.datereferral from User u inner join Referral r where u.userId=r.userId && r.datereferral='2022-09-21';

/*Customer table input*/
insert into Customer values(2001, 'Mohit','mohc@gmail','98237562');
insert into Customer values(2002, 'Sohit','sohc@gmail','99118987');
insert into Customer values(2003, 'Doe','doe@gmail','991105587');
insert into Customer values(2004, 'joe','joe@gmail','991108987');
/*Buying details table input*/
insert into BuyingDetails values(2001,101,'2022-09-21', 'Iphone 12');
insert into BuyingDetails values(2002,102,'2020-12-11', 'Iphone 14');
insert into BuyingDetails values(2003,103,'2020-06-30', 'Iphone 14');
insert into BuyingDetails values(2004,104,'2022-09-21', 'Iphone 13');
select * from BuyingDetails;


 select * from Customer as c
            inner join
            BuyingDetails as b
            on c.custId = b.custId
            where productName = "Iphone 14";

create view userview as
select name, mobile, email from User;

select * from userview;
select email from userview group by email;
select mobile from userview group by mobile;
/*delete all record of customer including purchase details Those have purchased iPhone 14.*/
            delete Customer,BuyingDetails from Customer  c
            inner join
            BuyingDetails  b
            on c.custId = b.custId
            where productName = "Iphone 14";

