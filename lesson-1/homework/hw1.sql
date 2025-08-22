Data - малумотлар, рақам, матн, сана ва бошкалар.
Database - маълумотларни сақлайдиган тузилма.
Relational Database - маълумотлар жадвал кўринишида сақланади ва улар узаро богланиши мумкин.
Table - маълумотлар базасининг асоси , катор (rows) ва устунлардан (columns) ташкил топади.
List five key features of SQL Server:
Маълумотларни ишончли сақлаш
Кучли хавфсизлик (security)
Юқори самарадорлик (performance)
Транзакцияларни қўллаб-қувватлаш
Интеграция — SSMS, Power BI, Excel ва бошқа платформалар билан
Authentication modes in SQL Server:
Windows Authentication - Windows нинг логини билан киради
SQL Server Authentication - логин ва паролни SQL Server да белгилаймиз
  
CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Students (
StudentID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT);

SQL Server - Microsoft нинг малумотлар базаси платформаси.
SSMS (SQL Server Management Studio) - SQL Server билан ишлаш учун дастур.
SQL (Structured Query Language) - малумотларни бошкариш тили.

DQL (Data Query Language) маълумот сураш
SELECT * FROM Students;

DML (Data Manipulation Language) → маълумот қўшиш, янгилаш, ўчириш
INSERT INTO Students VALUES (1, 'Ali', 20);
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 1;

DDL (Data Definition Language) → тузилмани яратиш, ўзгартириш
CREATE TABLE Teachers (ID INT, Name VARCHAR(50));
ALTER TABLE Students ADD Email VARCHAR(100);
DROP TABLE Teachers;

DCL (Data Control Language) → рухсат ва хавфсизлик
--
TCL (Transaction Control Language) → транзакцияларни бошқариш
DELETE FROM Students WHERE Age < 18;

INSERT INTO Students (StudentID, Name, Age) VALUES
(1, 'Ali', 20),
(2, 'Vali', 22),
(3, 'Dilnoza', 19);
