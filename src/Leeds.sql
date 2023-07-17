--1--
--Find employees who have the highest salary in each of the departments.

select d.name as Department, e.name as Employee, e.salary as Salary
from Employee e
         JOIN Department d on e.departmentId = d.id
where (e.departmentId, e.salary) in(select departmentId, max(salary) from Employee group by departmentId);


--2--
--Write an SQL query to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.
select email as Email from Person group by email having count( email)>1 ;


--3--
--select case when count(*)=1 then null
else (select salary  from Employee order by salary desc limit 1 offset 1)end as SecondHighestSalary from Employee;
select case when count(*)=1 then null else (select salary  from Employee order by salary desc limit 1 offset 1)end as SecondHighestSalary from Employee;
