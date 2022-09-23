-- jdbc 계정에서 실행
CREATE TABLE students(
    stu_id VARCHAR2(30) UNIQUE,
    stu_name VARCHAR2(20),
    stu_password VARCHAR2(30),
    stu_score NUMBER(5)
);

SELECT 'private ' 
|| decode(data_type, 'NUMBER', 'int ', 'String ')
|| lower(substr(column_name, 1, instr(column_name, '_')-1)) || initcap(substr(column_name, instr(column_name, '_')+1)) || ';' AS field
FROM user_tab_columns 
WHERE table_name = 'STUDENTS';


INSERT INTO students VALUES ('akow283', '찬웅쌤', 'a123', 0);
INSERT INTO students VALUES ('nagyeom', '송나겸', 'n123', 0);
INSERT INTO students VALUES ('hyeyeon', '남궁혜연', 'h123', 0);
INSERT INTO students VALUES ('dalhyeon', '김달현', 'd123', 0);

COMMIT;

SELECT *
FROM students;

SELECT count(*)
FROM students
WHERE stu_id = 'akow283';

SELECT *
FROM students
WHERE stu_id = 'akow283';
