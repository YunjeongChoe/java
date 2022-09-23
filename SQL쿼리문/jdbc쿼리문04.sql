CREATE TABLE members(
    mem_id VARCHAR2(50),
    mem_pw VARCHAR2(50)
);

SELECT COUNT(*) AS cnt
FROM students
WHERE 1=1
AND stu_id = 'akow283';

CREATE TABLE boards(
    no NUMBER(5),
    board_title VARCHAR2(100),
    board_content VARCHAR2(100),
    board_author VARCHAR2(50),
    board_date VARCHAR2(100)
);


CREATE SEQUENCE board_seq
       INCREMENT BY 1
       START WITH 1
       MINVALUE 1
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

SELECT COUNT(*)+1
FROM boards;

SELECT board_seq.nextval
FROM dual;

SELECT 'private ' 
|| decode(data_type, 'NUMBER', 'int ', 'String ')
|| lower(substr(column_name, 1, instr(column_name, '_')-1)) || initcap(substr(column_name, instr(column_name, '_')+1)) || ';' AS field
FROM user_tab_columns 
WHERE table_name = 'BOARDS';

