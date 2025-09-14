create database library_db


-- Books table
create table Books(
  Book_id int primary key,
  Title varchar(255) not null,
  Author varchar(255) not null,
  Published_year int,
  Genre varchar(50),
  Available_cpoies int)

-- Members table
create table Members(Member_id int primary key, Name varchar(100) not null, Email varchar(100) unique,Join_date Date)

-- Borrwowed books
create table Borrowed_books(
  Borrwo_id int primary key,Member_id int, Borrow_date Date,
  Retuen_date Date, foreign key (Book_id) references Books(Book_id),
  foreign key (Member_id) referneces Members (Member_id) )

