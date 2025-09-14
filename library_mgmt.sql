create database library_db


-- Books table
create table Books(
  Book_id int primary key,
  Title varchar(255) not null,
  Author varchar(255) not null,
  Published_year int,
  Genre varchar(50),
  Available_cpoies int)
