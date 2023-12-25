use gender;
select * from gender;
SELECT 
    *
FROM
    GENDER
LIMIT 10;
insert into gender
            values
            ('john smith', 'M', 6789006, 0.025416878);
SELECT 
    *
FROM
    gender;
SELECT 
    *
FROM
    gender
WHERE
    ï»¿Name LIKE ('D%');
CREATE VIEW GENDERBASE AS
    SELECT 
        GENDER, COUNT
    FROM
        GENDER;  
SELECT * FROM GENDERBASE;
DROP VIEW GENDERBASE;






              
