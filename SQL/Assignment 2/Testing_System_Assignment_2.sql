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
-- SELECT * FROM 	Department;
                                    
CREATE TABLE IF NOT EXISTS Position (
    PositionID 					INT PRIMARY KEY AUTO_INCREMENT,
	PositionName 				VARCHAR(50)
);

INSERT INTO `Position` (PositionID,PositionName)
VALUE					('1','DEV'),
						('2','Test'),
                        ('3','Scrum Master'),
                        ('4','PM');		
                        
-- SELECT * FROM 	Position;                       
                        
CREATE TABLE IF NOT EXISTS `Account` (
     AccountID 					INT PRIMARY KEY AUTO_INCREMENT,
     Email 						VARCHAR(50)UNIQUE KEY,
     Username 					VARCHAR(50) UNIQUE KEY,
     FullName 					VARCHAR(50),
     DepartmentID 				INT,
     PositionID 				INT,
     CreateDate 				DATE
);

INSERT INTO `Account`	(AccountID,Email,FullName,DepartmentID,PositionID,CreateDate)
VALUES					('1','haidang29productions@gmail.com','dangblack','5','1','2020-03-05'),
						('2','account1@gmail.com','quanganh','1','2','2020-03-05'),
                        ('3','account2@gmail.com','vanchien','2','3','2020-03-07'),
                        ('4','account3@gmail.com','cocoduongqua','3','4','2020-08-03'),
                        ('5','account4@gmail.com','doccocaubai','4','4','2020-03-10'),
                        ('6','dapphatchetngay@gmail.com','khabanh','6','3','2020-04-05'),
                        ('7','songcodaoly@gmail.com','huanhoahong','7','2','2020-03-25'),
                        ('8','sontungmtp@gmail.com','tungnui','8','1','2020-04-07'),
                        ('9','duongghuu@gmail.com','dungghuu','9','2','2020-04-07'),
                        ('10','vtiaccademy@gmail.com','vtiaccademy','10','1','2020-04-09');
                        
-- SHOW COLUMNS FROM `Account`;                       
-- SELECT * FROM `Account`;

CREATE TABLE IF NOT EXISTS `Group` (
    GroupID 					INT PRIMARY KEY AUTO_INCREMENT,
    GroupName 					VARCHAR(50),
    CreatorID 					INT,
    CreatorDate 				DATE
);

INSERT INTO `Group` (GroupID ,GroupName,CreatorID,CreatorDate)
VALUE				('1','Testing System','5','2019-03-05'),
					('2','VTI Development','1','2020-03-07'),
                    ('3','VTI Sale01','2','2020-03-09'),
                    ('4','VTI Sale02','3','2020-03-10'),
                    ('5','VTI Sale03','4','2020-03-28'),
                    ('6','VTI Creator','6','2020-04-06'),
                    ('7','VTI Marketing 01','7','2020-04-07'),
                    ('8','Management','8','2020-04-08'),
                    ('9','Chat With Love','9','2020-04-09'),
                    ('10','Vi Ti Ai','10','2020-04-10');
                    
-- SHOW COLUMNS FROM `Group`;
-- SELECT * FROM `Group`;

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
						
-- SELECT * FROM `GroupAccont`;                        

CREATE TABLE IF NOT EXISTS TypeQuestion (
     TypeID 					INT PRIMARY KEY AUTO_INCREMENT,
     TypeName 					VARCHAR(50)
); 

INSERT INTO TypeQuestion 	(TypeID,TypeName)
VALUE						('1','Essay'),
							('2','Multiple-Choice');

-- SELECT * FROM `TypeQuestion`;

CREATE TABLE IF NOT EXISTS CategoryQuestion (
	CategoryID 					INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName 				VARCHAR(50)
);

INSERT INTO CategoryQuestion 	(CategoryID,CategoryName)
VALUE 							('1','Jave'),
								('2','ASP.NET'),
                                ('3','ADO.NET'),
                                ('4','SQL'),
                                ('5','Postman'),
                                ('6','Ruby'),
                                ('7','Python'),
                                ('8','C++'),
                                ('9','C Sharp'),
							    ('10','PHP');

-- SELECT * FROM `CategoryQuestion`;

CREATE TABLE IF NOT EXISTS Question (
     QuestionID 				INT PRIMARY KEY AUTO_INCREMENT,
     Content 					VARCHAR(50),
     CategoryID 				INT,
     TypeID 					INT,
     CreatorID 					INT,
     CreatorDate 				DATE
);

INSERT INTO Question 		(QuestionID,Content,CategoryID,TypeID,CreatorID,CreatorDate)
VALUE 						('1','Câu hỏi về Java','1','1','2','2020-04-05'),
							('2','Câu Hỏi về PHP','10','2','2','2020-04-05'),
							('3','Hỏi về C#','9','2','3','2020-04-06'),
							('4','Hỏi về Ruby','6','1','4','2020-04-06'),
							('5','Hỏi về Postman','5','1','5','2020-04-06'),
							('6','Hỏi về ADO.NET','3','2','6','2020-04-06'),
							('7','Hỏi về ASP.NET','2','1','7','2020-04-06'),
							('8','Hỏi về C++','8','1','8','2020-04-07'),
							('9','Hỏi về SQL','4','2','9','2020-04-07'),
							('10','Hỏi về Python','7','1','10','2020-04-07');

-- SELECT * FROM `Question`;

CREATE TABLE IF NOT EXISTS Answer (
     AnswerID 					INT PRIMARY KEY AUTO_INCREMENT,
     Content 					VARCHAR(50),
     QuestionID 				INT,
     isCorect 					VARCHAR(50)
);

INSERT INTO `Answer` 		(AnswerID,Content,QuestionID,isCorect)
VALUE						('1','Trả lời 01','1','0'),
							('2','Trả lời 02','1','1'),
							('3','Trả lời 03','1','0'),
							('4','Trả lời 04','1','1'),
							('5','Trả lời 05','2','1'),
							('6','Trả lời 06','3','1'),
							('7','Trả lời 07','4','0'),
							('8','Trả lời 08','8','0'),
							('9','Trả lời 09','9','1'),
							('10','Trả lời 10','10','1');
                            
-- SELECT * FROM `Answer`;                            

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
INSERT INTO Exam		(ExamID,`Code`,title,CategoryID,Duration,CreatorID,CreateDate)
VALUE 					('1','VTIQ001','Đề thi C#','1','60','5','2019-04-05'),
						('2','VTIQ002','Đề thi PHP','10','60','2','2019-04-05'),
						('3','VTIQ003','Đề thi C++','9','120','2','2019-04-07'),
						('4','VTIQ004','Đề thi Java','6','60','3','2019-04-08'),
						('5','VTIQ005','Đề thi Ruby','5','120','4','2019-04-10'),
						('6','VTIQ006','Đề thi Postman','3','60','6','2019-04-05'),
						('7','VTIQ007','Đề thi SQL','2','60','7','2019-04-05'),
						('8','VTIQ008','Đề thi Python','8','60','8','2019-04-07'),
						('9','VTIQ009','Đề thi ADO.NET','4','90','9','2019-04-07'),
						('10','VTIQ010','Đề thi ASP.NET','7','90','10','2019-04-08');

-- SELECT * FROM `Exam`;

CREATE TABLE IF NOT EXISTS ExamQuestion (
     ExamID 					INT,
     QuestionID 				INT
);

INSERT INTO ExamQuestion(ExamID,QuestionID)
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