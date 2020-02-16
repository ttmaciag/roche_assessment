SELECT * 
FROM students
WHERE students.student_id IN (
    SELECT student_id
    FROM exam_results
    WHERE exam_results.grade >= 4 
    AND exam_results.class_id IN (
        SELECT class_id
        FROM class_catalogue
        WHERE class_name = 'algebra'
    )
);