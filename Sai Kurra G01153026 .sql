REM   Script: Sai Kurra G01153026
REM   SQL Practice Problems 

select sysdate,'Sai Kurra' from dual;

create table book(book_id int not null, book_title varchar(70) not null, book_publisher varchar(40) not null, book_year int not null, book_catergory varchar(10) not null, book_price number not null,  
    constraint book_book_id_pk primary key(book_id));

create table student(st_id int not null, st_lname varchar(10) not null, st_fname varchar(10) not null, st_major char(4) not null, st_age int not null, st_gpa number not null,  
    constraint student_st_id_pk primary key(st_id));

create table author(author_id int not null, author_lname varchar(10) not null, author_fname varchar(10) not null, author_state varchar(2) not null,  
    constraint author_author_id_pk primary key(author_id));

create table borrowed(borrow_number int not null, book_id int not null, st_id int not null, borrow_date date not null,  
    constraint borrowed_borrow_number_pk primary key(borrow_number),  
    constraint borrowed_book_id_fk foreign key(book_id) references book(book_id),  
    constraint borrowed_st_id_fk foreign key(st_id) references student(st_id));

create table book_author(book_id int not null, author_id int not null,  
    constraint book_author_book_id_fk foreign key(book_id) references book(book_id),  
    constraint book_author_author_id_fk foreign key(author_id) references author(author_id));

select sysdate,'Sai Kurra' from dual;

insert into book(book_id, book_title, book_publisher, book_year, book_catergory, book_price) values(12345, 'art is a primary focus of the book', 'Zephyr Press', 2008, 'Adventure', 10.9898);

insert into book(book_id, book_title, book_publisher, book_year, book_catergory, book_price) values(12346, 'Everything You Need to Know to Make Fabulous Food', 'Grand Central', 2013, 'Cookbook', 11.9898);

insert into book(book_id, book_title, book_publisher, book_year, book_catergory, book_price) values(12347, 'A Peoples History of the United States', 'Harper Perennial Modern Classics', 2005, 'History', 12.9898);

insert into book(book_id, book_title, book_publisher, book_year, book_catergory, book_price) values(12348, 'Everything You Need to Know About the World and How It Works', 'National Geographic', 2011, 'Science', 13.9898);

insert into book(book_id, book_title, book_publisher, book_year, book_catergory, book_price) values(12349, 'The Shining', 'Doubleday', 1977, 'Thriller', 15.9898);

insert into student(st_id, st_lname, st_fname, st_major, st_age, st_gpa) values(34567, 'Williams', 'James', 'CYBR', 23, 3.4);

insert into student(st_id, st_lname, st_fname, st_major, st_age, st_gpa) values(34568, 'George', 'Meris', 'DTSC', 24, 3.5);

insert into student(st_id, st_lname, st_fname, st_major, st_age, st_gpa) values(34569, 'James', 'Mike', 'MGMT', 25, 3.6);

insert into student(st_id, st_lname, st_fname, st_major, st_age, st_gpa) values(34570, 'Patricia', 'Williams', 'DTSC', 26, 3.7);

insert into student(st_id, st_lname, st_fname, st_major, st_age, st_gpa) values(34571, 'Joshua', 'George', 'MGMT', 23, 3.8);

insert into author(author_id, author_lname, author_fname, author_state) values(98765, 'Brain', 'Marshall', 'DC');

insert into author(author_id, author_lname, author_fname, author_state) values(98766, 'Zin', 'Howard', 'LA');

insert into author(author_id, author_lname, author_fname, author_state) values(98767, 'Ramsay', 'Gordon', 'VA');

insert into author(author_id, author_lname, author_fname, author_state) values(98768, 'Prince', 'Eileen S', 'AZ');

insert into author(author_id, author_lname, author_fname, author_state) values(98769, 'King', 'Stephen', 'CA');

insert into borrowed(borrow_number, book_id, st_id, borrow_date) values(23456, 12345, 34567, DATE '2022-09-20');

insert into borrowed(borrow_number, book_id, st_id, borrow_date) values(23457, 12346, 34568, DATE '2022-10-17');

insert into borrowed(borrow_number, book_id, st_id, borrow_date) values(23458, 12347, 34569, DATE '2022-08-22');

insert into borrowed(borrow_number, book_id, st_id, borrow_date) values(23459, 12348, 34570, DATE '2022-10-14');

insert into borrowed(borrow_number, book_id, st_id, borrow_date) values(23460, 12348, 34567, DATE '2022-07-21');

insert into book_author(book_id, author_id) values(12349, 98769);

insert into book_author(book_id, author_id) values(12345, 98768);

insert into book_author(book_id, author_id) values(12346, 98767);

insert into book_author(book_id, author_id) values(12347, 98766);

insert into book_author(book_id, author_id) values(12348, 98765);

select sysdate,'Sai Kurra' from dual;

select * from book;

select * from student;

select * from author;

select * from borrowed;

select * from book_author;

select sysdate,'Sai Kurra' from dual;

select student.st_lname, student.st_fname, borrowed.book_id, student.st_gpa 
from student join borrowed on student.st_id =borrowed.st_id 
where st_gpa between 3.6 and 4.0;

select sysdate,'Sai Kurra' from dual;

select sysdate,'Sai Kurra' from dual;

update student set st_major = 'MS' where st_major = 'MGMT';

select sysdate,'Sai Kurra' from dual;

delete from borrowed where date < 2022-08-01 and st_id = 34567;

select sysdate,'Sai Kurra' from dual;

delete from borrowed where date < 2022-08-01 and where st_id = 34567;

select sysdate,'Sai Kurra' from dual;

delete from borrowed where date < 2022-08-01 and delete st_id = 34567;

select sysdate,'Sai Kurra' from dual;

delete from borrowed where date < 2022-08-01 and where st_id = 34567;

select sysdate,'Sai Kurra' from dual;

delete from borrowed where date < 2022-08-01 and st_id = 34567;

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < '2022-08-01' and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < '2022-08-01' and st_id = '34567');

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where('date' < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < '2022-08-01' and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < 2022-08 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < 2022-08-01 and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < '2022-08-01' and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

delete from borrowed where(borrow_date < date '2022-08-01' and st_id = 34567);

select sysdate,'Sai Kurra' from dual;

update book set book_price = (book_price * 1.15);

select sysdate,'Sai Kurra' from dual;

select * from book;

select * from student;

select * from author;

select * from borrowed;

select * from book_author;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price, author.author_fname, author.author_lname 
from book 
join book_author on book.book_id = book_author.book_id 
join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price, author.author_fname, author.author_lname 
from book 
inner join book_author on book.book_id = book_author.book_id 
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price, author.author_fname, author.author_lname 
from book 
inner join book_author on book.book_id = book_author.book_id 
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price, author.author_fname, author.author_lname 
from book 
inner join book_author on book.book_id = book_author.book_id 
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view BOOK INFORMATION as  
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book information as  
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view  
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information 
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as 
select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
from book as b 
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author as a  
inner join book_author on book.book_id = book_author.book_id 
inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author as a  
inner join book_author on book.book_id = book_author.book_id 
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author as a  
inner join book_author on book.book_id = book_author.book_id 
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author as a  
inner join book_author on book.book_id = book_author.book_id and inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author 
inner join book_author on book.book_id = book_author.book_id and inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price from book as b and a.author_fname, a.author_lname  from author 
inner join book_author on book.book_id = book_author.book_id inner join author as a on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information  
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price from book and author.author_fname, author.author_lname from author 
inner join book_author on book.book_id = book_author.book_id  
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as 
select book.book_id, book.book_title, book.book_publisher, book.book_year, book.book_catergory, book.book_price from book and author.author_fname, author.author_lname from author 
inner join book_author on book.book_id = book_author.book_id  
inner join author on book_author.author_id = author.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname  
from book as b inner join book_author on b.book_id = book_author.book_id  
inner join author as a on book_author.author_id = a.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname  
from book as b inner join book_author on b.book_id = book_author.book_id  
inner join author as a on book_author.author_id = a.author_id;

select sysdate,'Sai Kurra' from dual;

create view book_information as select b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname  
from book as b inner join book_author on b.book_id = book_author.book_id  
inner join author as a on book_author.author_id = a.author_id;

select sysdate,'Sai Kurra' from dual;

CREATE VIEW bookinformation 
AS SELECT book_id, book_title, book_publisher, book_year, book_catergory, book_price, a.author_fname, a.author_lname 
FROM book b, book_author c, author a  
WHERE b.book_id = c.book_id 
AND c.author_id = a.author_id;

select sysdate,'Sai Kurra' from dual;

CREATE VIEW bookinformation 
AS SELECT b.book_id, b.book_title, b.book_publisher, b.book_year, b.book_catergory, b.book_price, a.author_fname, a.author_lname 
FROM book b, book_author c, author a  
WHERE b.book_id = c.book_id 
AND c.author_id = a.author_id;

select sysdate,'Sai Kurra' from dual;

MERGE INTO book WITH (HOLDLOCK) AS target 
USING new_book AS source 
ON target.book_id = source.book_id 
AND target.book_title = source.book_title 
AND target.book_publisher = source.book_publisher 
AND target.book_year = source.book_year 
AND target.book_category = source.book_category  
WHEN MATCHED THEN  
    UPDATE SET target.book_price = source.book_price 
WHEN NOT MATCHED BY TARGET THEN 
    INSERT (book_id, book_title, book_publisher, book_year, book_category, book_price) 
    VALUES (source.book_id, source.book_title, source.book_publisher, source.book_year, source.book_category, source.book_price)


select sysdate,'Sai Kurra' from dual;

MERGE INTO book WITH (HOLDLOCK) AS target 
USING new_book AS source 
ON target.book_id = source.book_id 
AND target.book_title = source.book_title 
AND target.book_publisher = source.book_publisher 
AND target.book_year = source.book_year 
AND target.book_category = source.book_category  
WHEN MATCHED THEN  
    UPDATE SET target.book_price = source.book_price  
WHEN NOT MATCHED BY TARGET THEN 
    INSERT (book_id, book_title, book_publisher, book_year, book_category, book_price) 
    VALUES (source.book_id, source.book_title, source.book_publisher, source.book_year, source.book_category, source.book_price)


select sysdate,'Sai Kurra' from dual;

MERGE INTO book USING (HOLDLOCK) AS target 
USING new_book AS source 
ON target.book_id = source.book_id 
AND target.book_title = source.book_title 
AND target.book_publisher = source.book_publisher 
AND target.book_year = source.book_year 
AND target.book_category = source.book_category  
WHEN MATCHED THEN  
    UPDATE SET target.book_price = source.book_price  
WHEN NOT MATCHED BY TARGET THEN 
    INSERT (book_id, book_title, book_publisher, book_year, book_category, book_price) 
    VALUES (source.book_id, source.book_title, source.book_publisher, source.book_year, source.book_category, source.book_price)


