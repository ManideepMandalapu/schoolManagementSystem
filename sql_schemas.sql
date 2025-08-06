Create database SchoolDatabase;
Use SchoolDatabase;

--  Enrollments Table
CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Enrollment_Date DATE NOT NULL,
    Status VARCHAR(10)
);


--  Student_Information Table
CREATE TABLE Student_Information (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(30) NOT NULL,
    Last_Name VARCHAR(30) NOT NULL,
    DOB DATE NOT NULL,
    Enrollment_ID INT,
    FOREIGN KEY (Enrollment_ID) REFERENCES Enrollments(Enrollment_ID)
);

--  Fee_Details Table
CREATE TABLE Fee_Details (
    Payment_ID INT PRIMARY KEY,
    Tuition_Fee DECIMAL(10,2) NOT NULL,
    Due_Date DATE NOT NULL,
    Paid_Date DATE NOT NULL,
    Payment_Mode VARCHAR(20),
    Student_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);

-- Parent_Information Table
CREATE TABLE Parent_Information (
    Parent_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Parent_Name VARCHAR(30),
    Relation VARCHAR(30),
    Primary_Number VARCHAR(20) NOT NULL,
    Secondary_Number VARCHAR(20),
    FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);

-- Class Table
CREATE TABLE Class (
    Class_ID INT PRIMARY KEY,
    No_of_Students INT NOT NULL,
    Academic_Year YEAR NOT NULL
);
-- Teacher Information
CREATE TABLE Teacher_Information (
    Teacher_ID INT PRIMARY KEY,
    Teacher_Name VARCHAR(30),
    Contact_Number VARCHAR(20),
    Email_ID VARCHAR(30)
);

-- --  Subjects_Information Table
CREATE TABLE Subjects_Information (
    Subject_ID INT PRIMARY KEY,
    Teacher_ID INT NOT NULL,
    Subject VARCHAR(30),
    Class_ID INT NOT NULL,
    FOREIGN KEY (Teacher_ID) REFERENCES Teacher_Information(Teacher_ID),
    FOREIGN KEY (Class_ID) REFERENCES Class(Class_ID)
);

--  Teacher_Class Junction Table 
CREATE TABLE Teacher_Class (
    Teacher_ID INT,
    Class_ID INT,
    PRIMARY KEY (Teacher_ID, Class_ID),
    FOREIGN KEY (Teacher_ID) REFERENCES Teacher_Information(Teacher_ID),
    FOREIGN KEY (Class_ID) REFERENCES Class(Class_ID)
);

--  Exams Table
CREATE TABLE Exams (
    Exam_ID INT PRIMARY KEY,
    Exam_Type VARCHAR(30),
    Max_Marks INT NOT NULL,
    Subject_ID INT NOT NULL,
    FOREIGN KEY (Subject_ID) REFERENCES Subjects_Information(Subject_ID)
);

--  Marks Table 
CREATE TABLE Marks (
    Exam_ID INT,
    Student_ID INT,
    Marks_Obtained INT NOT NULL,
    PRIMARY KEY (Exam_ID, Student_ID),
    FOREIGN KEY (Exam_ID) REFERENCES Exams(Exam_ID),
    FOREIGN KEY (Student_ID) REFERENCES Student_Information(Student_ID)
);
