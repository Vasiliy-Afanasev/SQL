SQL-JOIN
Используем наши таблицы, создание которых описано в «HW_2.1 – DDL»

1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id ;
 
 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id 
where monthly_salary < 2000;

 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary 
from employee_salary 
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id 
where employee_id is null;

 4. Вывести все зарплатные позиции меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary 
from employee_salary 
right join employees on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id 
where employee_id is null and monthly_salary <2000;

 5. Найти всех работников кому не начислена ЗП.
select employee_name
from employees
left join employee_salary on employees.id = employee_salary.employee_id 
where employee_id is null;
 
 6. Вывести всех работников с названиями их должности.
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id;
 
 7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id
where role_name ilike '% java developer%';
 
 8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id
where role_name ilike '% python %';
 
 9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id
where role_name ilike '% qa %';
 
 10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id
where role_name ilike '% manual qa%';
 
 11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name
from employees
left join roles_employee on employees.id = roles_employee.employee_id
left join roles on  role_id = roles.id
where role_name ilike '% automation qa %';
 
 12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary 
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%junior%';
 
 13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary 
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%middle%';
 
 14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary 
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%senior%';
 
 15. Вывести зарплаты Java разработчиков
select monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%java %';
 
 16. Вывести зарплаты Python разработчиков
select monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%junior python%';
 
 18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%middle javascript%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%senior java %';
 
 20. Вывести зарплаты Junior QA инженеров
select monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where (role_name ilike '%junior%') and (role_name ilike '%qa%');
 
 21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where (role_name ilike '%junior%');
 
 22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary)
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%javascript%';
 
 23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary)
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%qa%';
 
 24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary)
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%qa%';
 
 25. Вывести количество QA инженеров
select count(role_name)
from roles
where role_name ilike '%qa%';
 
 26. Вывести количество Middle специалистов.
select count(role_name)
from roles
where role_name ilike '%middle%';
 
 27. Вывести количество разработчиков
select count(role_name)
from roles
where role_name ilike '%developer%';
 
 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary)
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where role_name ilike '%developer%';
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name,role_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
order by monthly_salary;
 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name,role_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name,role_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where monthly_salary<2300
order by monthly_salary;
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name,role_name, monthly_salary
from roles_employee
join employee_salary on roles_employee.employee_id = employee_salary.employee_id
join employees on roles_employee.employee_id = employees.id
join roles on role_id = roles.id
join salary on salary_id = salary.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary;


