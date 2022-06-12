
create Table Test
(
	Id int constraint pk_Tablename_id primary key identity(1,1),
	Name nvarchar(50) constraint uq_Tablename_name unique,
	SurName nvarchar(50) constraint nn_Tablename_surname not null,
	Salary money constraint ck_Tablename_salary Check (Salary>600),
	Email nvarchar(50) constraint ck_Tablename_email Check( Email like '%@%') constraint df_Tablename_email default 'system@code.edu.az'
)
drop table Test
alter table Test
drop constraint ck_Tablename_email