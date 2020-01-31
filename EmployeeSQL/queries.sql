SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary from employees as e
join salaries as s
on e.emp_no = s.emp_no;

select * from employees as e
where e.hire_date < '01/01/1986';

select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date from dept_manager as m
join departments as d
on m.dept_no = d.dept_no
join employees as e
on e.emp_no = m.emp_no;

select de.emp_no, d.dept_name, e.last_name, e.first_name from dept_emp as de
join employees as e
on e.emp_no = de.emp_no
join departments as d
on d.dept_no = de.dept_no;

select * from employees
where first_name = 'Hercules' and last_name LIKE 'B%';

select de.emp_no, d.dept_name, e.last_name, e.first_name from dept_emp as de
join departments as d
on d.dept_no = de.dept_no
join employees as e
on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

select de.emp_no, d.dept_name, e.last_name, e.first_name from dept_emp as de
join departments as d
on d.dept_no = de.dept_no
join employees as e
on e.emp_no = de.emp_no
where d.dept_name = 'Development'
or d.dept_name = 'Sales';

select last_name, count(last_name) as frequency from employees
group by last_name
order by count(last_name) desc;