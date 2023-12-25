USE demo;
CREATE TABLE BIG_COUNTRIES (
    name VARCHAR(30),
    continent VARCHAR(30),
    area INT(30),
    population INT(30),
    gdp INT(30)
);
INSERT INTO BIG_COUNTRIES
			VALUES('Afghanistan', 'Albania', 'Algeria', 'Andorra','Angola'),
            ('Asia', 'Europe', 'Africa', 'Europe', 'Africa'),
            (652230, 28748, 2381742, 468, 1246700),
            (25500100, 2831741, 37100000, 78115, 20609294),
            (20343000000, 12960000000, 188681000000, 3712000000,100990000000);
            
SELECT * FROM BIG_COUNTRIES;