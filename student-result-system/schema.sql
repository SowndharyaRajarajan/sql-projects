create database schoolresultsystem;
use schoolresultsystem;

create table Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    class VARCHAR(20)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE Marks (
    marks_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);
