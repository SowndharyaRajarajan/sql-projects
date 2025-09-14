INSERT INTO Students (student_id, student_name, class) VALUES
(1, 'Arjun', '10A'),
(2, 'Meera', '10A'),
(3, 'Karthik', '10B'),
(4, 'Divya', '10B'),
(5, 'Rahul', '10A');

INSERT INTO Subjects (subject_id, subject_name) VALUES
(101, 'Mathematics'),
(102, 'Science'),
(103, 'English');

INSERT INTO Marks (marks_id, student_id, subject_id, marks) VALUES
(1, 1, 101, 85), (2, 1, 102, 90), (3, 1, 103, 78),
(4, 2, 101, 88), (5, 2, 102, 76), (6, 2, 103, 89),
(7, 3, 101, 92), (8, 3, 102, 81), (9, 3, 103, 84),
(10, 4, 101, 70), (11, 4, 102, 68), (12, 4, 103, 75),
(13, 5, 101, 95), (14, 5, 102, 89), (15, 5, 103, 91);
