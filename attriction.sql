create database employee_attrition;
use employee_attrition;
select * from employee_tab1;

select min(age) from employee_tab1;
select avg(age) from employee_tab1;
select min(hourlyrate) from employee_tab1;
select max(hourlyrate) from employee_tab1;
select distinct(age) from employee_tab1;
select count(attrition)as count,attrition from employee_tab1 where attrition="yes";
select gender,count(*) as count from employee_tab1 group by gender;
select maritalstatus,count(*) as count from employee_tab1 group by maritalstatus;
select educationfield,count(*) as count from employee_tab1 group by educationfield;
select maritalstatus,count(*) as count from employee_tab1 where maritalstatus="Divorced" and gender="female";
select maritalstatus,count(*) as count from employee_tab1 where maritalstatus="Divorced" and gender="male";
select jobrole,count(*) as count from employee_tab1 group by jobrole;
select Department,count(*) as count from employee_tab1 group by Department;
select Department,count(*) as count from employee_tab1 where Department="Cardiology"and gender="female";
select Department,count(*) as count from employee_tab1 where Department="Cardiology"and gender="male";
select Department,count(*) as count from employee_tab1 where Department="Maternity"and gender="female";
select Department,count(*) as count from employee_tab1 where Department="Maternity"and gender="male";
select Department,count(*) as count from employee_tab1 where Department='Neurology' and gender="female";
select Department,count(*) as count from employee_tab1 where Department='Neurology' and gender="male";
select distinct(department) from employee_tab1;
select BusinessTravel,gender,count(*) as a from employee_tab1 group by BusinessTravel,gender order by a;

select * from employee_tab1;
set sql_safe_updates=0;

alter table employee_tab1 modify column age_cat varchar(100);
update employee_tab1 set age_cat=case when age<18 then "young aged" when age>=18 and age<=35 then "middle aged" else "high aged" end;
describe employee_tab1;


