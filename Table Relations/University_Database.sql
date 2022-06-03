CREATE TABLE Majors
(
	MajorID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50) NOT NULL
)

CREATE TABLE StudentsS
(
	StudentID INT PRIMARY KEY IDENTITY,
	StudentNumber INT NOT NULL,
	StudentName NVARCHAR(100) NOT NULL,
	MajorID INT FOREIGN KEY
	REFERENCES Majors(MajorID) NOT NULL
)

CREATE TABLE Payments
(
	PaymentID INT PRIMARY KEY IDENTITY,
	PaymentDate DATE NOT NULL,
	PaymentAmount NVARCHAR(100) NOT NULL,
	StudentID INT FOREIGN KEY
	REFERENCES StudentsS(StudentID) NOT NULL
)

CREATE TABLE Subjects
(
	SubjectID INT PRIMARY KEY IDENTITY,
	SubjectName NVARCHAR(100) NOT NULL
)

CREATE TABLE Agenda
(
	StudentID INT,
	SubjectID INT,
	CONSTRAINT PK_StudentSubject
	PRIMARY KEY (StudentID, SubjectID),
	CONSTRAINT FK_Agenda_Students
	FOREIGN KEY (StudentID)
	REFERENCES StudentsS(StudentID),
	CONSTRAINT FK_Agenda_Subjects
	FOREIGN KEY (SubjectID)
	REFERENCES Subjects(SubjectID)
)

