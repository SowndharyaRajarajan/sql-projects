-- 1. Find the average marks of each student.
SELECT s.student_name, AVG(m.marks) AS avgmarks
FROM Students s
INNER JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_name;

-- 2. Find the topper in each subject.
SELECT sub.subject_name, MAX(m.marks) AS top_score, s.student_name
FROM Marks m
JOIN Students s ON m.student_id = s.student_id
JOIN Subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name;

-- 3. List students who failed in at least 1 subject (<40 marks).
SELECT DISTINCT s.student_name
FROM Students s
INNER JOIN Marks m ON s.student_id = m.student_id
WHERE m.marks < 40;

-- 4. Show rank list of students based on total marks.
SELECT s.student_name, SUM(m.marks) AS total_marks
FROM Students s
JOIN Marks m ON s.student_id = m.student_id
GROUP BY s.student_name
ORDER BY total_marks DESC;

-- 5. Find the highest average score across all subjects.
SELECT sub.subject_name, AVG(m.marks) AS avg_score
FROM Marks m
JOIN Subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name
ORDER BY avg_score DESC;
