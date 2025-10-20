-- Build in Mathematical Functions 
select * from salaries;
select * from employees;
-- ABS ( Absolute Value ) -- It removes neg sign from the values in the particular col 
select abs(-15);
select emp_no, salary , abs(salary) as abs_value from salaries limit 5;

-- Round ( It round offs the value )
select round(12.345,2); # ( we use 2 to display two decimal values )
select emp_no, round(salary * 0.10, 2) as bonus_salary from salaries limit 5;

-- CEIL ( it rounds off to the nearest integer ( Whole Number) even it is below 3.5 it gives round up to highest value/int )
select ceil(3.2);
select ceil(3.9);
select emp_no,salary,ceil (salary / 1000) as ceil_amount from salaries limit 20;

-- Floor( it round down to the nearest value/int )
select floor(3.2);
select floor(3.9);
select emp_no,salary, floor(salary / 1000) as floor_salary from salaries limit 5;

-- MOD ( it gives the remainder after dividing x = 10  and y = 4)
select mod(10,4);  # So the remainder is 2 
select emp_no , mod(emp_no , 2) as even_or_odd from employees limit 20;
select emp_no,emp_no % 2 AS even_num from employees;

-- Power( x raise to the power of y )
select power(2,3);
select emp_no, power(Year(curdate()) - Year(hire_date) , 2 ) as power_exp from employees limit 5;

-- SQRT(Square root of x ) 	
Select sqrt(16);
select emp_no,salary, sqrt(salary) as salary_root_sqr from salaries limit 50;


-- SUB QUERIES -- ( It is a query inside a query ) ( Single Row SUB query ) 
-- i want to display employees , first name , last name , salary and  who earn more than the avg salary 
select * from employees;
select e.emp_no , e.first_name,e.last_name,s.salary 
from employees as e
join 
salaries as s 
on e.emp_no = s.emp_no
where s.salary > (select avg(salary) from salaries);

select s.emp_no, (select avg(salary) from salaries) as avr_salary from salaries as s limit 100;

select e.emp_no, e.first_name,(select avg(salary) from salaries) as avr_salary from employees as e limit 100;

select first_name , hire_date from employees where hire_date < (select avg(hire_date) from employees);


-- USER DEFINED FUNCTION -- 
-- 
/* DELMITER $$
CREATE FUNCTION FUNCTION_NAME (PARAMETER) 
begin
	declare 
	Return 
END $$
*/ DELIMITER $$ 























