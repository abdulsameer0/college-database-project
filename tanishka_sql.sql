

DESCRIBE student_old;

CREATE TABLE collegedb.student_old(
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  student_fname VARCHAR(150) NOT NULL,
  student_lname VARCHAR(150) NOT NULL,
  student_age INT NOT NULL
);

insert into collegedb.student_old (student_fname,student_lname,student_age) value ('juhi', null ,23);


INSERT INTO student_old (student_fname, student_lname, student_age)
VALUES ('juhi', 'kumari',10);

delete from student_old WHERE student_id = 2;

create table book(book_id int auto_increment primary key, book_name varchar(150), title varchar(150), price float);

insert into collegedb.book (book_name,title,price) values ('javascript basics', 'ravi', 190),('html', 'ritika', 100),('mySql', 'sameer', 198),('AWS', 'juhi', 299);
SELECT * FROM collegedb.book;
update book set price = 1000 where book_name = 'html';

select * from book where book_name = 'mySql';  
select * from book limit 4;

create database library;

create table students (students_id INT PRIMARY KEY AUTO_INCREMENT,  student_fname VARCHAR(150),  student_lname VARCHAR(150), students_class int, students_marks int);
 
insert into students (student_fname, student_lname, students_class, students_marks)
values( 'tanishka', 'sayyad' , 12, 100), ('mahak', 'bee' , 13, 95), ('juhi', 'kumari', 11,  96), ('karan', 'khan', 15, 80), ('arbaj', 'ahmad', 18, 78);

select * from students;

select * FROM students
where students_marks > 80;

update students
set students_marks = 75
where student_fname = 'karan';

create table booksnew (booksnew_id INT PRIMARY KEY AUTO_INCREMENT, title varchar(100), author varchar(130), price float);

USE collegedb;
INSERT INTO booksnew (title, author, price)
values
  ('The Alchemist', 'Paulo Coelho', 399.50),
  ('To Kill a Mockingbird', 'Harper Lee', 299.99),
  ('1984', 'George Orwell', 349.00),
  ('The Great Gatsby', 'F. Scott Fitzgerald', 279.75),
  ('Pride and Prejudice', 'Jane Austen', 319.20);
  
  delete from booksnew where booksnew_id = 2;

  
  SELECT * FROM booksnew where booksnew_id = 5;
  
  select booknew_price from  collegedb.student_old right join booksnew.title on booksnew_title = collegedb.student_old_student_id;

SELECT * FROM collegedb.employee;

select * from collegedb.employee where department_id = 10 AND salary > 120000;
select * from collegedb.employee where department_id = 10 OR salary > 120000;

select * from collegedb.employee where department_id = 5 AND salary < 130000;
select * from collegedb.employee where department_id = 5 OR salary < 130000;

select * from collegedb.employee where job_title = 'media buyer' AND department_id = 3;
select * from collegedb.employee where job_title = 'media buyer' OR department_id = 3;

select * from collegedb.employee where first_name = 'Eric' AND last_name = 'Miller';
select * from collegedb.employee where first_name = 'Whitney' OR last_name = 'Smith';

select * from collegedb.employee where department_id = 10 AND country = 'India';
select * from collegedb.employee where country = 'US' OR country = 'India';

select COUNT(*) from collegedb.employee;

select AVG(salary) from collegedb.employee;

select MAX(salary) from collegedb.employee;

select MIN(salary) from collegedb.employee;

select sum(salary) from collegedb.employee;
select sum(department_id ) from collegedb.employee;

SELECT * FROM collegedb.employee;

select id, first_name, last_name, salary, hire_date from collegedb.employee; 

SELECT 
  first_name, 
  hire_date, 
  salary, 
  TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) AS months_worked
FROM 
  employee;
  SELECT 
  first_name, 
  hire_date, 
  salary, 
  TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) AS months_worked,
  salary * 1.10 AS bonus
FROM 
  employee;

SELECT 
  first_name, 
  hire_date, 
  ROUND(salary / 1.10, 2) AS original_salary,
  salary AS increased_salary,
  TIMESTAMPDIFF(MONTH, hire_date, CURDATE()) AS months_worked
FROM employee;



create table teachers(id int auto_increment primary key, name varchar(100), subject varchar(250), email varchar(200) );

insert into teachers(name, subject, email) values ('tanishka', 'english', 'tanishka@gmail.com'), ('aqsa', 'maths', 'aqsa@gmail.com'), ('mahak', 'hindi', 'mahak@gmail.com'), ('arabj', 'sceince', 'arbaj2gmail.com'), ('sameer', 'java', 'sameer@gmail.com'), ('juhi', 'javscript', 'juhi@gamil.com'), ('arish', 'evs', 'sahiba@gamil.com');

select * from teachers;







