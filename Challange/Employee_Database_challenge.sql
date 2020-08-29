select emp_no,
first_name,
last_name
from employees
;

select title,
from_date,
to_date
from titles
;


select employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
into retirement_titles
from employees
left join titles
on employees.emp_no = titles.emp_no
where birth_date between '1952-01-01' and '1955-12-31'
;


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC
;


select count(unique_titles.emp_no), unique_titles.title
into retiring_titles
from unique_titles
left join employees
on unique_titles.emp_no = employees.emp_no
where birth_date between '1952-01-01' and '1955-12-31'
group by title
order by count desc
;


select emp_no,
first_name,
last_name,
birth_date
from employees
;


select from_date,
to_date
from Dept_emp
;


select title
from titles
;


