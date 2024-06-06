select sub_code, title, credits from course where department in 
('Physics', 'Music', 'Finance', 'Biology');


select * from faculty_info where name like 'K%' and salary > 65000;

select name, department, (salary+ (salary* 1.05)+(salary * 0.2)) as GROSS_SALARY, ((salary+ (salary* 1.05)+(salary * 0.2))-(salary*0.3)) as NET_SALARY from faculty_info;


select * from faculty_info where salary between 60000 and 80000;

select name from faculty_info where name like '_r%';

select * from faculty_info where department = 'Comp. Sci.'
order by salary desc;

UPDATE faculty_info SET Salary = Salary * 0.15;


UPDATE faculty_info SET Salary = Salary * 0.3 where department = 'Comp. Sci.' and salary < 70000;

select name, (salary * 12) as ANNUAL_SALARY from faculty_info;

update course set title = 'Game Theory' where title = 'Game Design'; 

--delete command
delete from faculty_info where department='History';
delete from course where sub_code like 'BIO%';



select avg(salary) from faculty_info where department = 'Physics';

select department, avg(salary) from faculty_info group by department;

select name, department,salary from faculty_info where salary = (select max(salary) from faculty_info);

select max(salary) as MAX_SAL from faculty_info;


select count(*) from faculty_info where department='Comp. Sci.';

SELECT title, SUM(CREDITS) AS TOTAL_CREDITS FROM COURSE WHERE DEPARTMENT='Comp. Sci. ';

select count(*) as no_of_instructor, sum(salary) as total_salary, department 
from faculty_info where department in('Physics' ,'Comp. Sci.') group by department;

SELECT SUM(CREDITS) AS TOTAL_CREDITS FROM COURSE WHERE DEPARTMENT in ('Comp. Sci. ', 'Biology') ;

select builder, sum(budget) from department group by builder;

select department, count(*) as NO_OF_INSTRUCTOR from faculty_info group by department;

select department, count(*) as NO_OF_INSTRUCTOR from faculty_info group by department order by NO_OF_INSTRUCTOR desc;

select semester,count(*) as NO_OF_COURSES from teaches group by semester;

select department, count(*) as NO_OF_INSTRUCTOR 
from faculty_info group by department having count(*) < 2;

select department, count(*) as NO_OF_INSTRUCTOR 
from faculty_info where department != 'Finance' 
group by department having count(*) >= 2 order by count(*) desc;

select department, sum(salary) as total_salary 
from faculty_info group by department having sum(salary) > 50000;



select builder, sum(budget) as total_budget 
from department where builder ='Watson' group by builder;

select max(salary) from faculty_info 
group by department having department = 'Comp. Sci.';





create table details (name varchar2(20),university varchar2(20));
insert into details (name, university) values('sarthak', 'soa university');


select concat(upper(substr('sarthak', 1,1)), lower(substr('sarthak', 2,length('sarthak')))) as Name from dual;

select(substr('sarthak', 2, 6)) as sub_name from dual;

select 'SOA University', length('SOA University') as len from dual;

select concat(upper(substr(name, 1,1)), lower(substr(name, 2,length(name)))) as formatted_name from faculty_info;

select name, upper(substr(department, 1,3)) from faculty_info;

select name, upper(to_char(date_of_join, 'mon')) as Month from faculty_info;

select name, upper(to_char(date_of_join, 'dd/mm/yyyy')) as Month from faculty_info;


select name, trunc(months_between(CURRENT_DATE, date_of_join)) as experience_in_moths
from faculty_info;


select name, trunc(months_between(CURRENT_DATE, date_of_join) / 12) as experience_in_years
from faculty_info;



SELECT name, date_of_join AS joined
FROM faculty_info;

SELECT CURRENT_DATE + 15 FROM dual;

select round(94204.27348, 2) as rounder from dual;
select (5 + power(8,9)) as ans from dual;
select sqrt(6464312) as root from dual;


select name, (extract(year from date_of_join)) as day from faculty_info;

select extract(day from current_date) from dual;
select name, to_char(date_of_join, 'day') as day_of_join from faculty_info;



























select name, (extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM date_of_join)) * 12 + (extract(MONTH FROM CURRENT_DATE) - EXTRACT(MONTH FROM date_of_join)) AS expeinmont
FROM faculty_info;

select name, (extract(YEAR FROM CURRENT_DATE) - extract(YEAR FROM date_of_join)) +
       (extract(MONTH FROM CURRENT_DATE) < extract(MONTH FROM date_of_join)) AS experience_in_years
FROM faculty_info;


