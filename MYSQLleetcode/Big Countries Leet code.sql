USE DEMO;
CREATE TABLE COUNTRIES (
    Naam VARCHAR(30),
    Continent VARCHAR(30),
    Area INT(30),
    Population INT(30),
    Gdp INT(30)
);
INSERT INTO COUNTRIES
			VALUES
            ('Afghanistan', 'Albania', 'Algeria', 'Andorra','Angola'),
            ('Asia', 'Europe', 'Africa', 'Europe', 'Africa'),
            (652230, 28748, 2381742, 468, 1246700),
            (25500100, 2831741, 37100000, 78115, 20609294),
            (20343000000, 12960000000, 188681000000, 3712000000,100990000000);
            
SELECT * FROM COUNTRIES;
SELECT Naam, Population , Area FROM COUNTRIES
WHERE Area >= 3000000 or population >= 25000000;
