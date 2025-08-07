Create database Schdb;
Use Schdb;

-- Enrollments Table

CREATE TABLE Enrollments (
Enrollment_ID INT PRIMARY KEY AUTO_INCREMENT,
Enrollment_Date DATE NOT NULL,
Status VARCHAR(10)
);

-- Student_Information Table

CREATE TABLE Student_Information (
Student_ID INT PRIMARY KEY AUTO_INCREMENT,
First_Name VARCHAR(30) NOT NULL,
Last_Name VARCHAR(30) NOT NULL,
DOB DATE NOT NULL,
Enrollment_ID INT,
FOREIGN KEY (Enrollment_ID) REFERENCES Enrollments(Enrollment_ID)
);

-- Fee_Details Table

CREATE TABLE Fee_Details (
Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
Tuition_Fee DECIMAL(10,2) NOT NULL,
Due_Date DATE NOT NULL,
Paid_Date DATE NOT NULL,
Payment_Mode VARCHAR(20),
Student_ID INT,
FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);

-- Parent_Information Table

CREATE TABLE Parent_Information (
Parent_ID INT PRIMARY KEY AUTO_INCREMENT,
Student_ID INT NOT NULL,
Parent_Name VARCHAR(30),
Relation VARCHAR(30),
Primary_Number VARCHAR(20) NOT NULL,
Secondary_Number VARCHAR(20),
FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);

-- Classes Table

CREATE TABLE Classes (
Class_ID INT PRIMARY KEY AUTO_INCREMENT,
Class VARCHAR(10) NOT NULL,
No_of_Students INT NOT NULL,
Academic_Year YEAR NOT NULL,
UNIQUE (Class, Academic_Year)
);

-- Teacher Information

CREATE TABLE Teacher_Information (
Teacher_ID INT PRIMARY KEY AUTO_INCREMENT,
Teacher_Name VARCHAR(30) NOT NULL,
Contact_Number VARCHAR(20) NOT NULL,
Email_ID VARCHAR(30) NOT NULL
);

-- Subjects_Information Table

CREATE TABLE Subjects_Information (
Subject_ID INT PRIMARY KEY AUTO_INCREMENT,
Teacher_ID INT NOT NULL,
Subject VARCHAR(30) NOT NULL,
Class_ID INT NOT NULL,
FOREIGN KEY (Teacher_ID) REFERENCES Teacher_Information(Teacher_ID),
FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID)
);

-- Teacher_Class Junction Table

CREATE TABLE Teacher_Class (
Teacher_ID INT,
Class_ID INT,
PRIMARY KEY (Teacher_ID, Class_ID),
FOREIGN KEY (Teacher_ID) REFERENCES Teacher_Information(Teacher_ID),
FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID)
);

-- Exams Table

CREATE TABLE Exams (
Exam_ID INT PRIMARY KEY AUTO_INCREMENT,
Exam_Type VARCHAR(30) NOT NULL,
Max_Marks INT NOT NULL,
Subject_ID INT NOT NULL,
FOREIGN KEY (Subject_ID) REFERENCES Subjects_Information(Subject_ID)
);

-- Marks Table

CREATE TABLE Marks (
Exam_ID INT,
Student_ID INT,
Marks_Obtained INT NOT NULL,
PRIMARY KEY (Exam_ID, Student_ID),
FOREIGN KEY (Exam_ID) REFERENCES Exams(Exam_ID),
FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);
