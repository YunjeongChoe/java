SELECT REPLACE(word, '-', '') AS words
FROM wordtable
WHERE type = '명사'
AND REGEXP_LIKE(REPLACE(word, '-', ''), '^[가-힣]{2,3}$')
GROUP BY REPLACE(word, '-', '') 
;

DROP TABLE wordtable;

SELECT count(*)
FROM wordtable;

DROP TABLE wordgame;

CREATE TABLE wordgame AS
(
SELECT REPLACE(word, '-', '') AS words
FROM wordtable
WHERE type = '명사'
AND REGEXP_LIKE(REPLACE(word, '-', ''), '^[가-힣]{2,3}$')
GROUP BY REPLACE(word, '-', '')
);

SELECT COUNT(*)
FROM wordgame;

SELECT *
FROM wordgame
WHERE words LIKE '료%';
