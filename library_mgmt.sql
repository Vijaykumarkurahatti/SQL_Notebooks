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

Insert into Books (Book_id, Title, AUthor, Published_Year, Genre, Available_copies) values 
  (00551, 'The Great Gatsby', 'F_Scott_Fitzgerald, '19250410', 'Tragedy','10000'),
  (00552, 'ULYSSES', 'James_Joyce', '19220202', 'Modernist_Novel', '10000'),
  (00553, 'Lolita', 'Vladimir_Nabokov', '19552001', 'Novel', '10000'),
  (00554, 'Brave_New_World', 'Aldous_Huxley', '19320505', 'Science_Fiction_Dystopian_Fiction', '10000'),
  (00555, 'The_Sound_And_The_Fury', 'William_Faulkner', '19290103', 'Southern_Gothic', '10000'),
  (00556, 'Catch22', 'Joseph_Heller', '19611010', 'Dark_Comedy', '10000'),
  (00557, 'The_Grapes_Of_Wrath', 'John_Steinbeck', '19391404', 'Novel', '10000'),
  (00558, 'I_Claudius', 'Robert_Graves', '19340810', 'Historical', '10000'),
  (00559, 'To_The_Lighthouse', 'Virginia_Woolf', '19270505', 'Modernism', '10000'),
  (05510, 'Slaughterhouse_Five', 'Kurt_Vonnegut', '19693103', 'War_Novel', '10000'),
  (05511, 'Invisible_Man', 'Ralph_Ellison', '19521404', 'African_American_Literature', '10000'),
  (05512, 'Native_Son', 'Richard_Wright', '19400103', 'Social_Protest', '10000'),
  (05513, 'USA_Trilogy', 'John_Dos_Passos', '19300405', 'Political_Fiction', '10000'),
  (05514, 'A_Passage_To_India', 'E_M_Forster', '19240406', 'Novel', '10000'),
  (05515, 'Tender_Is_The_Night', 'F_Scott_Fitzgerald', '19341204', 'Tragedy', '10000'),
  (05516, 'Animal_Farm', 'George_Orwell', '19451708', 'Political_Satire', '10000'),
  (05517, 'The_Golden_Bowl', 'Henry_James', '19041011', 'Philosophy', '10000'),
  (05518, 'A_Handful_Of_Dust', 'Evelyn_Waugh', '19340603', 'Fiction', '10000'),
  (05519, 'As_I_Lay_Dying', 'William_Faulkner', '19300302', 'Black_Comedy', '10000'),
  (05520, 'The_Heart_Of_The_Matter', 'Graham_Greene', '19480302', 'Nove', '10000')
  

-- '''
-- Insert into Members Table'''
Insert into Members (Member_id, NAme, Email, Join_date) Values
  (10009,'Thomas_Partey', 'tpartey4@yahoo.com', '19900304'),
  (100010, 'Emmanuel_Adebayo', 'emmadb@gmail.com', '20000112'),
  (100019, 'Kanu_Nwankwo', 'nwankwok1@hotmail.com', '20030906'),
  (100020, 'Wilfred_Ndidi', 'wilfndi1@gmail.com', '20050206'),
  (100029, 'Kelechi_Ihenacho', 'kel_nacho9@outlook.com', '20090402'),
  (100030, 'Taiwo_Awoniyi', 'taiwoawo7@gmail.com', '20020403'),
  (100039, 'Victor_Osimehn', 'vicosinapple@gmail.com', '20050406'),
  (100040, 'Bukayo_Saka', 'bukayosak@yahoo.com', '19900506'),
  (100049, 'Sadio_Mane', 'sadioman9@gmail.com', '20000504'),
  (100050, 'Emmanuel_Akanji', 'emmak@yahoo.com', '20050605' ),
  (100059, 'Musa_Dembele', 'dembelemu@gmail.com','19890504'),
  (100060, 'Musa_Sissoko', 'musissoko4@yahoo.com', '19950608'),
  (100069, 'Kolo_Muani', 'kolomua1@hotmail.com', '19900304'),
  (100070, 'Kylian_Mbappe', 'kylianmba09@gmail.com', '20060905'),
  (100079, 'Eduado_Camavinga', 'educamavin5@mail.com', '20020703'),
  (100080, 'Ansu_Fati', 'ansufi4@gmail.com', '19900305'),
  (100089, 'Moses_Caceido', 'moscaceido1@gmail.com', '19990406'),
  (100090, 'Obafemi_Martins', 'martins4real@gmail.com', '20000902'),
  (100099, 'Mikel_Obi', 'therealmikeobi@yahoo.com', '20070403'),
  (1000100, 'Claudio_Makalele', 'claudimak4@outlook.com', '19990503')

  -- '''
-- Insert into Borrowed Books'''
Insert into Borrowed_Books (Borrow_Id, Book_Id, Member_Id, Borrow_Date, Return_Date) values
(010002, 00551, 10009, '20230819', '20230829'),
(010003, 00552, 100010, '20230513', '20230525'),
(010004, 00553, 100019, '20230101', '20230110'),
(010005, 00554, 100020, '20230305', '20230315'),
(010006, 00555, 100029, '20230510', '20230515'),
(010007, 00556, 100030, '20230220', '20230330'),
(010008, 00557, 100039, '20230430', '20230515'),
(010009, 00558, 100040, '20230429', '20230510'),
(0100010, 00559, 100049, '20230820', '20230825'),
(0100011, 005510, 100050, '20230201', '20230210'),
(0100012, 005511, 100059, '20231215', '20231230'),
(0100013, 005512, 100060, '20230512', '20230517'),
(0100014, 005513, 100069, '20230218', '20230223'),
(0100015, 005514, 100070, '20230130', '20230220'),
(0100016, 005515, 100079, '20230404', '20230409'),
(0100017, 005516, 100080, '20231010', '20231020'),
(0100018, 005517, 100089, '20230415', '20230420'),
(0100019, 005518, 100090, '20230618', '20230625'),
(0100020, 005519, 100099, '20230429', '20230404'),
(0100021, 005520, 1000100, '20230505', '20230515')


  -- Get a list of booksborrowed by a specific member(e.g Thomas_Partey)
SELECT name,title FROM Members as M
join
Borrowed_Books as bb
on
m.Member_id=bb.Member_Id
join
Books as B
on bb.Book_Id=B.Book_id
where name='Thomas_Partey'


  -- . Find members who borrowed a specific book(e.g The_Sound_And_The_Fury)
SELECT name,title FROM Members as M
join
Borrowed_Books as bb
on
m.Member_id=bb.Member_Id
join
Books as B
on bb.Book_Id=B.Book_id
where title='The_Sound_And_The_Fury'

  -- Update the number of available copies of a book after it’s borrowed
update books
set Available_Copies= Available_copies - 1
where book_id=556

-- Insert a new borrowing records.
insert into borrowed_books
values(0100023,005519,100080,'20231102',dateadd(month,3,'20231102'))


  -- Write a query to find all books that are currently borrowed and overdue (i.e., not returned within 14 days from the borrow date). Display the book titles and the names of members who borrowed them.
select title,name
from Borrowed_Books as bb
join Members as Ms on bb.Member_id=Ms.Member_Id
join Books on Books.Book_id=bb.Book_Id
where 
 DATEDIFF(DAY,Borrow_Date,return_date)>14

  -- Find the most popular genre in the library. Display the genre with the highest total number of books borrowed.
select top 1 genre, title, genre, count(*) as total_borrow
from Books
join Borrowed_Books on Borrowed_Books.Book_Id=Books.Book_id
group by genre, Title
order by total_borrow desc

-- Calculate the average duration a book is borrowed by members. Display the book title, the average duration in days, and the number of times it has been borrowed.
select title, count(title) as noOftimesborrowed,
 avg(datediff(day,borrow_date,return_date)) average_duration
 from borrowed_books
 join Books on Books.Book_id=Borrowed_Books.Book_Id
 group by Title

-- DDL; Add a new column named fine_amount to the BorrowedBooks table. This column will store the fine amount (in USD) for overdue books. Set an appropriate default value for this column.
alter table Borrowed_Books
  add  fine_amounts money not null 
  constraint finePK default 5.00

-- write a SQL query to calculate the total fines collected from all overdue books. Use the fine_amount column and consider all books that are currently overdue.
select sum(fine_amounts) from Borrowed_Books as total_fine
 where DATEDIFF(day,borrow_date,return_date)>14

-- Find the top 5 members who have borrowed the most books. Display their names and the number of books they have borrowed.
select top 5 name, count(name)As total_borrow from 
Borrowed_Books
join Members on Members.Member_id=Borrowed_Books.Member_Id
group by name
order by total_borrow desc

-- Add a UNIQUE constraint to the book_id and member_id columns in the BorrowedBooks table to prevent a member from borrowing the same book more than once simultaneously.
alter table borrowed_books
add constraint unique_borrowed
unique(book_id, member_id)

--  Write a query to find the books that are currently available for borrowing (i.e., books with at least one available copy). Display the book titles and the number of available copies.
select title,Available_copies from books 
where Available_Copies>= 1
  
-- Calculate the late fees for each overdue book. Late fees are calculated as #200 per day for each day a book is overdue. Display the book title, the name of the member who borrowed it, the number of days it is overdue, and the calculated late fee.
select title,name,DATEDIFF(day,borrow_date,return_date)-14 as overdue_days,
CASE
WHEN 
DATEDIFF(day,borrow_date,return_date)>14
THEN
200*(select DATEDIFF(day,borrow_date,return_date)-14)
WHEN 
DATEDIFF(day,borrow_date,return_date)<14
THEN 0
ELSE
0
END AS LATE_FEE
FROM BOOKS
join
Borrowed_Books on Borrowed_Books.Book_Id=Books.Book_id
join 
Members on members.member_id=borrowed_books.member_id

-- Calculate the average duration in months for which books are borrowed. Display the book title and the average duration in months. Consider fractional months as well.
select title, avg( datediff(month,borroW_date,RETURN_DATE))AS AVERAGE_MONTH
from BOOKS
JOIN BORROWED_BOOKS 
ON BOOKS.BOOK_ID=BORROWED_BOOKS.BOOK_ID
GROUP BY TITLE

-- Create a query that categorizes members based on their borrowing behavior. Use a CASE statement to categorize them as “Frequent Borrowers” if they have borrowed more than 10 books, “Regular Borrowers” if they have borrowed between 5 and 10 books, and “Occasional Borrowers” if they have borrowed less than 5 books.
SELECT COUNT(MEMBER_ID) AS NO_OF_BOOKS_BORROWED,
CASE
WHEN
COUNT(MEMBER_ID)<5
THEN
'OCCASIONAL BORROWERS'
WHEN
COUNT(MEMBER_ID) 
BETWEEN 5 AND 10
THEN
'REGULAR BORROWERS'
WHEN
COUNT(MEMBER_ID)>10
THEN
'FREQUENT BORROWER'
END AS BORROWED_BEHAVIOR
FROM Borrowed_Books
GROUP BY Member_Id

-- Find members who return books quickly. Calculate the average duration it takes for each member to return borrowed books, and then identify members whose average return time is less than 7 days.
SELECT NAME,AVG(DATEDIFF(DAY,BORROW_DATE,(RETURN_DATE))) AS AVERAGE_RETURN_DURATION
FROM Members
JOIN Borrowed_Books ON
Borrowed_Books.Member_Id=Members.Member_id
GROUP BY NAME
HAVING
AVG(DATEDIFF(DAY,BORROW_DATE, ISNULL(RETURN_DATE,GETDATE())))<7

-- Identify books with late fees exceeding #2000. Display the book title and the total late fees for each book using a CASE statement.
  SELECT TITLE AS BOOK_TITLE, 
SUM(
CASE
WHEN
 DATEDIFF(day,borrow_date,return_date)>14
 THEN
 200* DATEDIFF(day,borrow_date,return_date)-14
 ELSE
 0
 END)AS LATE_FEE
 FROM Borrowed_Books
 JOIN BOOKS ON
 BOOKS.Book_id=Borrowed_Books.Book_Id
 GROUP BY TITLE
 HAVING SUM(CASE
WHEN
 DATEDIFF(day,borrow_date,return_date)>14
 THEN
 200* DATEDIFF(day,borrow_date,return_date)-14
 ELSE
 0
 END
 )>2000




  -- Data Deletion (DML)

-- Remove a borrowing record when a book is returned.
delete  from  Borrowed_Books
where Return_Date is null
  
