SQL_DDL

 Таблица employees:
 1. Создать таблицу employees
"- id. serial,  primary key,
- employee_name. Varchar(50), not null"
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

 2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Avdey'),
('Orestes'),
('Glycerium'),
('Gury'),
('Svirid'),
('Anatoliy'),
('Flavian'),
('Anikita'),
('Uriel'),
('Patapius'),
('Mstislav'),
('Benjamin'),
('Panteleimon'),
('Severian'),
('Abel'),
('Venedikt'),
('Stanislav'),
('Rostislav'),
('Filon'),
('Miloslav'),
('Just'),
('Theodore'),
('Abacum'),
('Anton'),
('Ivan'),
('Rem'),
('Ignatius'),
('Pitirim'),
('Ferapont'),
('Benedict'),
('Micah'),
('Evdokim'),
('Filon'),
('Anikita'),
('Spiridon'),
('Azari'),
('Gorislav'),
('Peter'),
('Rufinianus'),
('Timur'),
('Vitaly'),
('Gury'),
('Novel'),
('Valaam'),
('Boniface'),
('Nikita'),
('Ruf'),
('Julius'),
('Mammoth'),
('Eleazar'),
('Agni'),
('Mark'),
('Glycerium'),
('Ananias'),
('Sergei'),
('Agafon'),
('Zeno'),
('Anastasia'),
('Erast'),
('Candide'),
('Gervasi'),
('Bronislav'),
('Albert'),
('Fofan'),
('Ephraim'),
('Abacum'),
('Pavel'),
('Vadim'),
('Feodosy'),
('Ostafiy');

 Таблица salary:
 3. Создать таблицу salary
"- id. Serial  primary key,
- monthly_salary. Int, not null"
create table salary(
id serial primary key,
monthly_salary int not null
);

 4. Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

 Таблица employee_salary:
 5. Создать таблицу employee_salary
"- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null"
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

 6. Наполнить таблицу employee_salary 40 строками:
- "в 10 строк из 40 вставить несуществующие employee_id"
insert into employee_salary(employee_id, salary_id)
values
(32, 12),
(39, 2),
(46, 3),
(65, 6),
(70, 3),
(54, 2),
(14, 6),
(61, 8),
(43, 2),
(3, 14),
(64, 2),
(15, 8),
(5, 5),
(41, 1),
(19, 8),
(21, 3),
(28, 8),
(35, 5),
(42, 8),
(11, 1),
(36, 5),
(12, 6),
(51, 5),
(1, 5),
(31, 15),
(67, 8),
(6, 13),
(55, 1),
(37, 1),
(38, 15),
(80, 2),
(99, 3),
(73, 1),
(94, 1),
(89, 8),
(91, 5),
(84, 6),
(74, 1),
(88, 2),
(82, 3);

 Таблица roles:
 7. Создать таблицу roles
"- id. Serial  primary key,
- role_name. int, not null, unique"
create table roles(
id serial primary key,
role_name int not null unique);

 8. Поменять тип столба "role_name с int на varchar(30)"
alter table roles 
alter column role_name type varchar(30);

 9. Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

 Таблица roles_employee:
 10. Создать таблицу roles_employee
"- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)"
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees(id),
foreign key (role_id) references roles(id)
);

 11. Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values
(32, 12),
(39, 18),
(46, 4),
(65, 19),
(70, 4),
(54, 18),
(14, 11),
(61, 2),
(43, 1),
(3, 9),
(64, 1),
(15, 13),
(5, 8),
(41, 7),
(19, 5),
(21, 4),
(28, 2),
(35, 16),
(42, 2),
(11, 7),
(36, 8),
(12, 14),
(51, 17),
(1, 15),
(31, 6),
(67, 5),
(6, 20),
(55, 10),
(37, 10),
(38, 3),
(4, 1),
(20, 4),
(40, 7),
(25, 10),
(22, 5),
(53, 8),
(69, 19),
(63, 7),
(27, 1),
(50, 4);

