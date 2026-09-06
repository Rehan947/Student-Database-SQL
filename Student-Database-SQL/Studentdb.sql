CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100),
    Gender VARCHAR(10),
    City VARCHAR(50),
    Phone_No BIGINT
);

CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(100),
    Duration VARCHAR(30),
    Fees DECIMAL(10,2)
);

	CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT,
    Enrollment_Date DATE,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

SELECT * FROM Students
WHERE City='Ahmedabad';

SELECT * FROM Courses
ORDER BY Fees DESC;

SELECT COUNT(*) AS Total_Students
FROM Students;

SELECT COUNT(*) AS Total_Courses
FROM Courses;

SELECT COUNT(*) AS Total_Enrollments
FROM Enrollments;

SELECT SUM(Fees) AS Total_Revenue
FROM Courses;

SELECT AVG(Fees) AS Average_Fees
FROM Courses;

SELECT
    Students.Student_Name,
    Courses.Course_Name
FROM Students
INNER JOIN Enrollments
ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses
ON Courses.Course_ID = Enrollments.Course_ID;

SELECT
    Courses.Course_Name,
    COUNT(Enrollments.Student_ID) AS Total_Students
FROM Courses
INNER JOIN Enrollments
ON Courses.Course_ID = Enrollments.Course_ID
GROUP BY Courses.Course_Name;

SELECT
    Courses.Course_Name,
    COUNT(Enrollments.Student_ID) AS Total_Students
FROM Courses
INNER JOIN Enrollments
ON Courses.Course_ID = Enrollments.Course_ID
GROUP BY Courses.Course_Name
HAVING COUNT(Enrollments.Student_ID) >= 2;

