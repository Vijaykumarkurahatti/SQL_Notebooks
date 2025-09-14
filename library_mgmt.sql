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


-- Insert into Members Table
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
  

