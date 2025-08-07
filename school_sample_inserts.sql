-- insert values into enrollments

insert into Schdb.Enrollments (Enrollment_Date,Status) values('2010-01-13','ACTIVE'),
('2017-07-23','INACTIVE'),
('2018-08-03','ACTIVE'),
('2013-03-19','ACTIVE');

--  Insert values into Student_Information Table

INSERT INTO Schdb.Student_Information (First_Name,Last_Name,DOB,Enrollment_ID) VALUES ('Sandeep','Akbar','2010-03-20',1),
('Hailey','Katherine','2001-08-17',2),
('Rishi','Kopaka','2000-09-27',3),
('Saurav','Ela','1999-02-02',4);


--  Insert values into Fee_Details Table

INSERT INTO Schdb.Fee_Details (Tuition_Fee,Due_Date,Paid_Date,Payment_Mode,Student_ID) Values(15000.00,'2024-07-01','2024-06-18','CASH',1),
(20000.00,'2025-05-01','2025-04-28','CHEQUE',2),
(20500.00,'2025-06-20','2025-05-18','CHEQUE',4),
(8000.00,'2025-06-01','2025-04-03','CASH',3),
(12000.00,'2025-06-01','2025-04-25','CASH',3);


-- Insert values into Parent_Information Table

insert into Schdb.Parent_Information (Student_ID,Parent_Name,Relation,Primary_Number,Secondary_Number) values(2,'JOE','FATHER','+1 2037689394',''),
(2,'SWAPNA','MOTHER','+1 2037634394','+124356789'),
(3,'DAISY','MOTHER','+1 2037009394','+1 8902763547'),
(2,'SAM','SISTER','+1 4000689394','+1 2033736590'),
(1,'KIRAN','FATHER','+1 3147689394','+1 9013736590'),
(4,'HASAN','FATHER','+1 2227689394','+1 2333736590');


--  Insert values into Classes Table

insert into Schdb.Classes(Class,No_of_Students,Academic_Year) values
(5,30,'2025'),
(4,29,'2025'),
(3,28,'2025'),
(2,29,'2025'),
(1,35,'2025'),
(2,40,'2024'),
(3,35,'2024'),
(4,30,'2023'),
(5,35,'2024');


-- Insert values into  Teacher Information

insert into Schdb.Teacher_Information (Teacher_Name,Contact_Number,Email_ID)values('PAVANI','+14765845000','PAVANI@GMIL.COM'),
('BHARATH','+14765847000','BHARATH@GMIL.COM'),
('HARSHA','+18935845000','HARSHA@GMIL.COM'),
('Surabhi','+1 3748538075','SURABHI@GMAIL.COM');


-- --  Insert values into  Subjects_Information Table

insert into Schdb.Subjects_Information (Teacher_ID,Subject,Class_ID) values(1,'MATHS',1),
(3,'SCIENCE',3),
(1,'SOCIAL',5),
(2,'MATHS',2),
(3,'SCIENCE',4),
(4,'TELUGU',6),
(2,'SOCIAL',9),
(4,'HINDI',7),
(1,'ENGLISH',8);

--   Insert values into Teacher_Class Junction Table

INSERT INTO Teacher_Class (Teacher_ID, Class_ID) VALUES
(1, 1),
(3, 3),
(1, 5),
(2, 2),
(3, 4),
(4, 6),
(2, 9),
(4, 7),
(1, 8);

--   Insert values into Exams Table

INSERT INTO schdb.Exams (Exam_Type,Max_Marks,Subject_ID) values('ANNUAL','100',1),
('ANNUAL','100',2),
('MID','50',3),
('ANNUAL','100',4),
('MID','50',5),
('ANNUAL','100',6),
('MID','50',7);


--   Insert values into Marks Table 

INSERT INTO schdb.Marks (Exam_ID, Student_ID, Marks_Obtained) VALUES
(1, 1, 87),   
(1, 2, 92),   
(1, 3, 78),   
(1, 4, 84),
(2, 1, 76),
(2, 2, 89),
(2, 3, 81),
(2, 4, 88),
(3, 1, 41),
(3, 2, 44),
(3, 3, 48),
(3, 4, 39),
(4, 1, 92),
(4, 2, 90),
(4, 3, 85),
(4, 4, 87),
(5, 1, 45),
(5, 2, 48),
(5, 3, 42),
(5, 4, 47),
(6, 1, 85),
(6, 2, 90),
(6, 3, 88),
(6, 4, 80),
(7, 1, 39),
(7, 2, 46),
(7, 3, 44),
(7, 4, 42);
