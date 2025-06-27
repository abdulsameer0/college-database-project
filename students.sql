use testdb;
create table students(id int primary key auto_increment,name varchar(255),age varchar(50),email varchar(255),course_id varchar(155));
insert into students(name,age,email,course_id)value('zarry','29','zarry3457@gmail.com','EC707');
select * from students;