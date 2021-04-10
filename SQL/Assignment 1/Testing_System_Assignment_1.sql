DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_1;
USE Testing_System_Assignment_1;

CREATE TABLE IF NOT EXISTS Department (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentNAME VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS `Posittion` (
    PosittionID INT PRIMARY KEY AUTO_INCREMENT,
	PosittionNAME VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS `Account` (
     AccountID INT PRIMARY KEY AUTO_INCREMENT,
     Email VARCHAR(50),
     Username VARCHAR(50),
     FullName VARCHAR(50),
     DepartmentID INT,
     PositionID INT,
     CreateDate DATE
     
);
CREATE TABLE IF NOT EXISTS `Group` (
    GroupID INT PRIMARY KEY AUTO_INCREMENT,
    GroupNAME VARCHAR(50),
    CreatorID INT,
    CreatorDATE DATE
);
CREATE TABLE IF NOT EXISTS GroupAccount (
    GroupID INT,
    AccountID INT,
    JoinDate DATE
);
CREATE TABLE IF NOT EXISTS TypeQuestion (
     TypeID INT PRIMARY KEY AUTO_INCREMENT,
     TypeName VARCHAR(50)
); 
CREATE TABLE IF NOT EXISTS CategoryQuestion (
	CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Question (
     QuestionID INT PRIMARY KEY AUTO_INCREMENT,
     Content VARCHAR(50),
     CategoryID INT,
     TypeID INT,
     CreatorID INT,
     CreateDate DATE
);
CREATE TABLE IF NOT EXISTS Answer (
     Answers INT PRIMARY KEY AUTO_INCREMENT,
     Content VARCHAR(50),
     QuestionID INT,
     isCorrect VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Exam (
     ExamID INT PRIMARY KEY AUTO_INCREMENT,
     `Code` VARCHAR(50),
     Title VARCHAR(50),
     CategoryID INT,
     Duration VARCHAR(50),
     CreatorID INT,
     CreateDate DATE
);
CREATE TABLE IF NOT EXISTS ExamQuestion (
     ExamID INT,
     QuestionID INT
);