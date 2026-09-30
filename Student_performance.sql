-- Student Performance Analysis
-- SQL Project

CREATE DATABASE student_performance;
USE student_performance;

-- Create Students Table
CREATE TABLE students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Course VARCHAR(30),
    Subject VARCHAR(30),
    English_Marks INT,
    Math_Marks INT,
    Science_Marks INT
);

-- Insert Student Data
INSERT INTO students VALUES
(1, 'Isha More', 'BCA', 'Science', 95, 88, 92),
(2, 'Rahul Patil', 'BCA', 'Science', 78, 82, 75),
(3, 'Sneha Shinde', 'BSc CS', 'Science', 89, 91, 87),
(4, 'Amit Jadhav', 'BCA', 'Science', 65, 72, 68),
(5, 'Priya Pawar', 'BSc CS', 'Science', 92, 94, 90),
(6, 'Neha More', 'BCS', 'Science', 84, 79, 88),
(7, 'Akash Patil', 'BCS', 'Science', 73, 70, 76),
(8, 'Pooja Shinde', 'BCA', 'Science', 88, 85, 91),
(9, 'Rohan More', 'BSc CS', 'Science', 67, 74, 69),
(10, 'Kiran Pawar', 'BCS', 'Science', 81, 86, 80);

-- View all students
SELECT * FROM students;

-- 1. Find highest English marks
SELECT MAX(English_Marks) AS Highest_English_Marks
FROM students;

-- 2. Find lowest English marks
SELECT MIN(English_Marks) AS Lowest_English_Marks
FROM students;

-- 3. Find highest marks with student name
SELECT Student_Name, English_Marks
FROM students
ORDER BY English_Marks DESC
LIMIT 1;

-- 4. Find lowest marks with student name
SELECT Student_Name, English_Marks
FROM students
ORDER BY English_Marks ASC
LIMIT 1;

-- 5. Find average English marks
SELECT AVG(English_Marks) AS Average_English_Marks
FROM students;

-- 6. Count total students
SELECT COUNT(*) AS Total_Students
FROM students;

-- 7. Students with English marks above 75
SELECT *
FROM students
WHERE English_Marks > 75;

-- 8. Students who passed in all subjects
SELECT *
FROM students
WHERE English_Marks >= 75
AND Math_Marks >= 75
AND Science_Marks >= 75;

-- 9. Count students by course
SELECT Course, COUNT(*) AS Student_Count
FROM students
GROUP BY Course;

-- 10. Average marks by course
SELECT Course, AVG(English_Marks) AS Average_English_Marks
FROM students
GROUP BY Course;

-- 11. Highest marks by course
SELECT Course, MAX(English_Marks) AS Highest_Marks
FROM students
GROUP BY Course;

-- 12. Students having English marks between 75 and 90
SELECT *
FROM students
WHERE English_Marks BETWEEN 75 AND 90;

-- 13. Students whose name starts with 'P'
SELECT *
FROM students
WHERE Student_Name LIKE 'P%';

-- 14. Sort students by English marks
SELECT *
FROM students
ORDER BY English_Marks DESC;

-- 15. Calculate total marks
SELECT
    Student_Name,
    English_Marks + Math_Marks + Science_Marks AS Total_Marks
FROM students;

-- 16. Calculate percentage
SELECT
    Student_Name,
    (English_Marks + Math_Marks + Science_Marks) / 3 AS Percentage
FROM students;

-- 17. Find top 3 students
SELECT
    Student_Name,
    English_Marks + Math_Marks + Science_Marks AS Total_Marks
FROM students
ORDER BY Total_Marks DESC
LIMIT 3;
