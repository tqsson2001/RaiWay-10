DROP DATABASE IF EXISTS 		Testing_System_Assignment_2;
CREATE DATABASE 				Testing_System_Assignment_2;
USE 							Testing_System_Assignment_2;

CREATE TABLE IF NOT EXISTS `Department` (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentNAME VARCHAR(50)
);

INSERT INTO `Department`			(`DepartmentID`,`DepartmentNAME`)
VALUES  							(1, 	'Marketing'),
									(2, 	'Sale'),
                                    (3, 	'Bao ve'),
                                    (4, 	'Nhan su'),
                                    (5, 	'Ky thuat'),
                                    (6, 	'Tai chinh'),
                                    (7, 	'Pho giam doc'),
                                    (8, 	'Giam doc'),
                                    (9, 	'Thu ki'),
                                    (10, 	'Ban hang');
                                    SELECT * from Department;
                                    
CREATE TABLE IF NOT EXISTS Position (
    PositionID 					INT PRIMARY KEY AUTO_INCREMENT,
	PositionName 				VARCHAR(50)
);

INSERT INTO `Position` (PositionName)
VALUE					('DEV'),
						('Test'),
                        ('Scrum Master'),
                        ('PM');

CREATE TABLE IF NOT EXISTS `Account` (
     AccountID 					INT PRIMARY KEY AUTO_INCREMENT,
     Email 						VARCHAR(50)UNIQUE KEY,
     Username 					VARCHAR(50) UNIQUE KEY,
     FullName 					VARCHAR(50),
     DepartmentID 				INT,
     PositionID 				INT,
     CreateDate 				DATE
);

INSERT INTO `Account`	(Email,FullName,DepartmentID,PositionID,CreateDate)
VALUES					('haidang29productions@gmail.com','dangblack','5','1','2020-03-05'),
						('account1@gmail.com','quanganh','1','2','2020-03-05'),
                        ('account2@gmail.com','vanchien','2','3','2020-03-07'),
                        ('account3@gmail.com','cocoduongqua','3','4','2020-08-03'),
                        ('account4@gmail.com','doccocaubai','4','4','2020-03-10'),
                        ('dapphatchetngay@gmail.com','khabanh','6','3','2020-04-05'),
                        ('songcodaoly@gmail.com','huanhoahong','7','2','2020-03-25'),
                        ('sontungmtp@gmail.com','tungnui','8','1','2020-04-07'),
                        ('duongghuu@gmail.com','dungghuu','9','2','2020-04-07'),
                        ('vtiaccademy@gmail.com','vtiaccademy','10','1','2020-04-09');
                        
 SHOW COLUMNS FROM `Account`;                       
                        
CREATE TABLE IF NOT EXISTS `Group` (
    GroupID 					INT PRIMARY KEY AUTO_INCREMENT,
    GroupName 					VARCHAR(50),
    CreatorID 					INT,
    CreatorDate 				DATE
);

INSERT INTO `Group` (GroupName,CreatorID,CreatorDate)
VALUE				('Testing System','5','2019-03-05'),
					('VTI Development','1','2020-03-07'),
                    ('VTI Sale01','2','2020-03-09'),
                    ('VTI Sale02','3','2020-03-10'),
                    ('VTI Sale03','4','2020-03-28'),
                    ('VTI Creator','6','2020-04-06'),
                    ('VTI Marketing 01','7','2020-04-07'),
                    ('Management','8','2020-04-08'),
                    ('Chat With Love','9','2020-04-09'),
                    ('Vi Ti Ai','10','2020-04-10');
                    
SHOW COLUMNS FROM `Group`;

CREATE TABLE IF NOT EXISTS GroupAccont (
    GroupID 					INT,
    AccountID 					INT,
    JoinDate 					DATE
);

INSERT INTO `GroupAccont` 	(GroupID,AccountID,JoinDate)
VALUE						('1','1','2019-03-07'),
							('1','2','2020-03-07'),
                            ('3','3','2020-03-09'),
                            ('3','4','2020-03-10'),
                            ('5','5','2020-03-28'),
                            ('1','3','2020-04-06'),
                            ('1','7','2020-04-07'),
                            ('8','3','2020-04-08'),
                            ('1','9','2020-04-09'),
                            ('10','10','2020-04-10');
                            

CREATE TABLE IF NOT EXISTS TypeQuestion (
     TypeID 					INT PRIMARY KEY AUTO_INCREMENT,
     TypeName 					VARCHAR(50)
); 

INSERT INTO TypeQuestion 	(TypeName)
VALUE						('Essay'),
							('Multiple-Choice');


CREATE TABLE IF NOT EXISTS CategoryQuestion (
	CategoryID 					INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName 				VARCHAR(50)
);

INSERT INTO CategoryQuestion 	(CategoryName)
VALUE 							('Jave'),
								('ASP.NET'),
                                ('ADO.NET'),
                                ('SQL'),
                                ('Postman'),
                                ('Ruby'),
                                ('Python'),
                                ('C++'),
                                ('C Sharp'),
							    ('PHP');

CREATE TABLE IF NOT EXISTS Question (
     QuestionID 				INT PRIMARY KEY AUTO_INCREMENT,
     Content 					VARCHAR(50),
     CategoryID 				INT,
     TypeID 					INT,
     CreatorID 					INT,
     CreatorDate 				DATE
);

INSERT INTO Question 		(Content,CategoryID,TypeID,CreatorID,CreatorDate)
VALUE 						('Câu hỏi về Java','1','1','2','2020-04-05'),
							('Câu Hỏi về PHP','10','2','2','2020-04-05'),
							('Hỏi về C#','9','2','3','2020-04-06'),
							('Hỏi về Ruby','6','1','4','2020-04-06'),
							('Hỏi về Postman','5','1','5','2020-04-06'),
							('Hỏi về ADO.NET','3','2','6','2020-04-06'),
							('Hỏi về ASP.NET','2','1','7','2020-04-06'),
							('Hỏi về C++','8','1','8','2020-04-07'),
							('Hỏi về SQL','4','2','9','2020-04-07'),
							('Hỏi về Python','7','1','10','2020-04-07');

CREATE TABLE IF NOT EXISTS Answer (
     AnswerID 					INT PRIMARY KEY AUTO_INCREMENT,
     Content 					VARCHAR(50),
     QuestionID 				INT,
     isCorect 					VARCHAR(50)
);

INSERT INTO `Answer` 		(Content,QuestionID,isCorect)
VALUE						('Trả lời 01','1','0'),
							('Trả lời 02','1','1'),
							('Trả lời 03','1','0'),
							('Trả lời 04','1','1'),
							('Trả lời 05','2','1'),
							('Trả lời 06','3','1'),
							('Trả lời 07','4','0'),
							('Trả lời 08','8','0'),
							('Trả lời 09','9','1'),
							('Trả lời 10','10','1');
                            

CREATE TABLE IF NOT EXISTS Exam (
     ExamID 					INT PRIMARY KEY AUTO_INCREMENT,
     `Code` 					VARCHAR(50),
     Title 						VARCHAR(50),
     CategoryID 				INT,
     Duration 					VARCHAR(50),
     CreatorID 					INT,
     CreateDate 				DATE
);

## QQQQ
INSERT INTO Exam		(`Code`,title,CategoryID,Duration,CreatorID,CreateDate)
VALUE 					('VTIQ001','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ002','Đề thi PHP','10','60','2','2019-04-05'),
						('VTIQ003','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ004','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ005','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ006','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ007','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ008','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ009','Đề thi C#','1','60','5','2019-04-05'),
						('VTIQ010','Đề thi C#','1','60','5','2019-04-05');


CREATE TABLE IF NOT EXISTS ExamQuestion (
     ExamID 					INT,
     QuestionID 				INT
);

INSERT INTO 			ExamQuestion(ExamID,QuestionID)
VALUE					('1','5'),
						('2','4'),
						('3','4'),
						('4','3'),
						('5','7'),
						('6','10'),
						('7','2'),
						('8','10'),
						('9','9'),
						('10','8');
