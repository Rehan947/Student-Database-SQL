# 🗄️ Student Database Management & SQL Analysis

### A Practical SQL Project for Student, Course & Enrollment Data

<div align="center">

<a href="https://www.mysql.com/" target="_blank">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" />
</a>

<a href="https://github.com/Rehan947" target="_blank">
  <img src="https://img.shields.io/badge/GitHub-Rehan947-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" />
</a>

</div>

<div align="center">

**Design • Store • Query • Analyze**

A practical SQL database project built during my
**Data Analytics & Data Science training at IT Vedant**,
focused on managing student records, courses and enrollments
using a relational database structure.

</div>

---

# 📌 Project Overview

**Student Database Management & SQL Analysis** is a practical SQL project
created to understand how relational databases are designed, structured,
queried and analyzed.

The project contains three connected entities:

Students
   │
   │ Student_ID
   ▼
Enrollments
   │
   │ Course_ID
   ▼
Courses


The database was designed using MySQL with primary keys,
foreign keys, filtering, sorting, aggregation, grouping,
joins and conditional analysis.

The project was developed as part of my practical learning at
IT Vedant while building my foundation in SQL and Data Analytics.

🎯 Project Objective

The main objective of this project was to practice SQL by working with a
structured relational dataset rather than only learning individual SQL
commands.

The project focuses on:

👨‍🎓 Student data management
📚 Course data management
📝 Enrollment records
🔗 Table relationships
🔍 Filtering records
↕️ Sorting data
🔢 Aggregate functions
🔗 INNER JOIN operations
📊 GROUP BY analysis
🎯 HAVING conditions
💰 Fee and revenue calculations
🗂️ Database Structure

The database is named:

StudentDB

It contains three tables:

👨‍🎓 Students

Stores student information.

Column	Description
Student_ID	Unique student identifier
Student_Name	Student name
Gender	Student gender
City	Student city
Phone_No	Student phone number
📚 Courses

Stores available course information.

Column	Description
Course_ID	Unique course identifier
Course_Name	Course name
Duration	Course duration
Fees	Course fees
📝 Enrollments

Connects students with the courses they are enrolled in.

Column	Description
Enrollment_ID	Unique enrollment identifier
Student_ID	Reference to Students
Course_ID	Reference to Courses
Enrollment_Date	Date of enrollment
🔗 Database Relationships

The project uses a relational database structure where the
Enrollments table connects students and courses.

┌─────────────────────┐
│      Students       │
├─────────────────────┤
│ PK  Student_ID      │
│     Student_Name    │
│     Gender          │
│     City            │
│     Phone_No        │
└──────────┬──────────┘
           │
           │ Student_ID
           │
           ▼
┌─────────────────────┐
│     Enrollments     │
├─────────────────────┤
│ PK  Enrollment_ID   │
│ FK  Student_ID      │
│ FK  Course_ID       │
│     Enrollment_Date │
└──────────┬──────────┘
           │
           │ Course_ID
           │
           ▼
┌─────────────────────┐
│       Courses       │
├─────────────────────┤
│ PK  Course_ID       │
│     Course_Name     │
│     Duration        │
│     Fees            │
└─────────────────────┘

This structure demonstrates how relational databases can connect
different types of information through keys.

📊 Dataset Overview

The current dataset contains:

Dataset	Records
👨‍🎓 Students	100
📚 Courses	100
📝 Enrollments	100

The student records include information from multiple cities, while the
course dataset contains different courses, durations and fee structures.

🔎 SQL Analysis Performed

The project includes practical SQL queries covering different levels of
data analysis.

1️⃣ Retrieve Complete Tables

Basic queries were used to inspect the contents of each table.

SELECT * FROM Students;

SELECT * FROM Courses;

SELECT * FROM Enrollments;

This helped verify the data stored inside the database.

2️⃣ Filter Students by City

The project includes filtering students based on their city.

SELECT * FROM Students
WHERE City = 'Ahmedabad';

The current dataset contains 8 students from Ahmedabad.

3️⃣ Sort Courses by Fees

Courses can be sorted according to their fee amount.

SELECT * FROM Courses
ORDER BY Fees DESC;

This makes it possible to identify the courses with higher fee values.

4️⃣ Count Total Students
SELECT COUNT(*) AS Total_Students
FROM Students;
Result

100 Students

5️⃣ Count Total Courses
SELECT COUNT(*) AS Total_Courses
FROM Courses;
Result

100 Courses

6️⃣ Count Total Enrollments
SELECT COUNT(*) AS Total_Enrollments
FROM Enrollments;
Result

100 Enrollments

💰 Fee Analysis

The project also uses SQL aggregate functions for fee analysis.

Total Course Fees
SELECT SUM(Fees) AS Total_Revenue
FROM Courses;
Result

₹26,13,400

In this project, this calculation represents the sum of the Fees
values stored in the Courses table. It is not enrollment-based revenue.

Average Course Fees
SELECT AVG(Fees) AS Average_Fees
FROM Courses;
Result

₹26,134

🔗 Student & Course JOIN Analysis

One of the important parts of this project is combining information
from multiple tables.

SELECT
    Students.Student_Name,
    Courses.Course_Name
FROM Students
INNER JOIN Enrollments
ON Students.Student_ID = Enrollments.Student_ID
INNER JOIN Courses
ON Courses.Course_ID = Enrollments.Course_ID;

This query connects:

Students
   ↓
Enrollments
   ↓
Courses

and allows the database to answer questions such as:

Which student is enrolled in which course?

📊 Course-wise Enrollment Analysis

The project also analyzes how many students are associated with each
course.

SELECT
    Courses.Course_Name,
    COUNT(Enrollments.Student_ID) AS Total_Students
FROM Courses
INNER JOIN Enrollments
ON Courses.Course_ID = Enrollments.Course_ID
GROUP BY Courses.Course_Name;

This demonstrates the practical use of:

INNER JOIN
COUNT()
GROUP BY
🎯 Courses With Multiple Students

The project uses the HAVING clause to filter grouped results.

SELECT
    Courses.Course_Name,
    COUNT(Enrollments.Student_ID) AS Total_Students
FROM Courses
INNER JOIN Enrollments
ON Courses.Course_ID = Enrollments.Course_ID
GROUP BY Courses.Course_Name
HAVING COUNT(Enrollments.Student_ID) >= 2;

This query identifies courses having at least two enrollments.

In the current dataset, 19 course names meet this condition.

🏆 Current Dataset Insights

Based on the provided dataset:

👨‍🎓 Students
100 student records
57 Female
43 Male
Students are distributed across multiple cities
📚 Courses
100 course records
Course fees range across different price levels
The highest course fee in the dataset is ₹49,500
The highest-fee course record is Java
📝 Enrollments
100 enrollment records
Enrollment dates currently span from January 2025 to December 2026
Course-wise enrollment analysis can be performed through joins and grouping
🥇 Highest Enrollment Course Names

Based on the current enrollment records:

Course	Enrollments
🥇 Java	10
🥈 C++	9
🥉 MySQL	8
4	Node.js — 7
5	Python — 6
🧠 SQL Concepts Practiced

This project helped me practice the core SQL concepts required for
working with relational datasets.

SQL Concept	Used For
CREATE DATABASE	Creating the database
CREATE TABLE	Creating relational tables
PRIMARY KEY	Uniquely identifying records
FOREIGN KEY	Connecting tables
SELECT	Retrieving data
WHERE	Filtering records
ORDER BY	Sorting results
COUNT()	Counting records
SUM()	Calculating totals
AVG()	Calculating averages
INNER JOIN	Combining related tables
GROUP BY	Grouping analytical results
HAVING	Filtering grouped results
🔄 SQL Project Workflow
                    DATABASE REQUIREMENTS
                             │
                             ▼
                    Database Design
                             │
                             ▼
                    Create Tables
                             │
                             ▼
                 Define Keys & Relationships
                             │
                             ▼
                       Insert Data
                             │
                             ▼
                       Query Data
                             │
                 ┌───────────┼───────────┐
                 ▼           ▼           ▼
              Filter       Join       Aggregate
                 │           │           │
                 └───────────┼───────────┘
                             ▼
                        Analyze Results
🛠️ Technology Stack
<div align="center"> <a href="https://www.mysql.com/" target="_blank"> <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" /> </a> <a href="https://www.microsoft.com/en-us/microsoft-365/excel" target="_blank"> <img src="https://img.shields.io/badge/Microsoft%20Excel-217346?style=for-the-badge&logo=microsoftexcel&logoColor=white" alt="Excel" /> </a> </div>
Database

MySQL

Used for:

Database creation
Table creation
Relationships
SQL querying
Data analysis
Supporting Data Files

CSV

Used as the structured source data for:

Students
Courses
Enrollments
📂 Repository Structure
Student-Database-SQL/
│
├── Students.csv
├── Courses.csv
├── Enrollments.csv
│
├── Studentdb.sql
│
└── README.md
📁 Project Files
Students.csv

Contains the student dataset with:

Student ID
Student Name
Gender
City
Phone Number
Courses.csv

Contains course information including:

Course ID
Course Name
Duration
Fees
Enrollments.csv

Contains enrollment records including:

Enrollment ID
Student ID
Course ID
Enrollment Date
Studentdb.sql

Contains the complete SQL database setup and analysis queries.

🚀 How to Run This Project
1️⃣ Clone the Repository
git clone https://github.com/Rehan947/Student-Database-SQL.git
2️⃣ Open MySQL

Open MySQL Workbench or another MySQL-compatible SQL environment.

3️⃣ Run the SQL Script

Open:

Studentdb.sql

Execute the script to:

Create the StudentDB database
Create the required tables
Define primary keys
Define foreign keys
Run the included analysis queries
4️⃣ Explore the Dataset

The CSV files can also be opened separately to inspect the underlying
student, course and enrollment records.

🔐 Data Privacy

The dataset contains student-related information including names and
phone numbers.

If this repository is made public, sensitive or personally identifiable
information should be anonymized or replaced with sample data before
public distribution.

The project is intended primarily to demonstrate:

SQL skills
Relational database design
Query writing
Data analysis
Database relationships
🧠 What I Learned

This project strengthened my understanding of how SQL is used to work
with structured data.

Database Skills
Designing relational tables
Creating primary keys
Creating foreign-key relationships
Understanding table dependencies
Structuring datasets
SQL Skills
Writing SELECT queries
Filtering with WHERE
Sorting with ORDER BY
Using aggregate functions
Joining multiple tables
Grouping analytical results
Filtering groups with HAVING
Analytical Thinking

The biggest takeaway was learning to move from:

Raw Data
   ↓
SQL Query
   ↓
Structured Result
   ↓
Useful Information

SQL is not just about writing commands — it is about asking the right
questions from the data.

🎯 Project Highlights
<div align="center">
🗄️ Database	🔗 Relationships	📊 Analysis	💻 SQL
StudentDB	PK / FK	Aggregations	MySQL
3 Tables	INNER JOIN	GROUP BY	WHERE / HAVING
</div>
📌 Project Status
<div align="center"> <img src="https://img.shields.io/badge/Status-Completed-00A86B?style=for-the-badge" alt="Completed" /> <img src="https://img.shields.io/badge/Database-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL" /> <img src="https://img.shields.io/badge/Records-300-7C3AED?style=for-the-badge" alt="300 Records" /> </div>
Current Dataset

100 Students • 100 Courses • 100 Enrollments

👨‍💻 About Me
<div align="center">
Rehan

Data Analytics & Data Science Enthusiast

I enjoy working with data, understanding patterns,
writing analytical queries and transforming structured
information into meaningful insights.

</div>
🌐 Connect With Me
<div align="center"> <a href="https://github.com/Rehan947" target="_blank"> <img src="https://img.shields.io/badge/GitHub-Rehan947-181717?style=for-the-badge&logo=github&logoColor=white" alt="GitHub" /> </a> <a href="https://www.linkedin.com/in/rehan-pathan-" target="_blank"> <img src="https://img.shields.io/badge/LinkedIn-Rehan%20Pathan-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn" /> </a> <a href="https://rehan-rk.netlify.app/" target="_blank"> <img src="https://img.shields.io/badge/Portfolio-Rehan-6C63FF?style=for-the-badge" alt="Portfolio" /> </a> </div>
🚀 Explore More
<div align="center"> <a href="https://rehan-rk.netlify.app/" target="_blank"> <img src="https://img.shields.io/badge/🌐%20VISIT%20MY%20PORTFOLIO-6C63FF?style=for-the-badge&labelColor=111827" alt="Visit Portfolio" /> </a>

<br><br>

Turning Data Into Meaningful Insights.

<br><br>

⭐ Built with SQL by Rehan

</div>
<div align="center">
🗄️ Student Database Management & SQL Analysis

Database Design • SQL Queries • Data Analysis • Relational Thinking

<br>

Built during my Data Analytics & Data Science learning journey at IT Vedant.

</div>
