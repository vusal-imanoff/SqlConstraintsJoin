create database TestJoin
use TestJoin

create table Department(
	Id int primary key identity(1,1),
	DepartmentName nvarchar(50) constraint nn_department_departmentname not null constraint ck_department_departmentname check (len(DepartmentName)>2),
)

create table Employees
(
	Id int primary key identity(1,1),
	FullName nvarchar(50) constraint nn_employees_fullname not null constraint ck_employees_fullname check (len(FullName)>3),
	Salary money constraint ck_employees_salary check(salary>=0),
	Email nvarchar(50) constraint un_employees_email unique constraint ck_employees_email check (email like '%@%'),
	DepartmentId int foreign key references Department(Id)
)

Select FullName, DepartmentName from Employees 
join Department on Employees.DepartmentId=Department.Id