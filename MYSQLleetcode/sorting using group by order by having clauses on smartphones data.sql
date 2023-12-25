USE DEMO;
SELECT 
    *
FROM
    SMARTPHONES;
    
/* Find the name and rating of the worst rated apple phone*/
SELECT 
    MODEL, RATING
FROM
    SMARTPHONES
WHERE
    BRAND_NAME = 'APPLE'
ORDER BY RATING ASC LIMIT 1;

/*Group by using SQL */
/* Group smartphones by brand and get the count, average price,
max rating, avg screen size and avg battery capacity */
SELECT 
    BRAND_NAME,
    COUNT(*) AS 'NUMBER_PHONES',
    ROUND(AVG(PRICE), 2) AS 'AVERAGE PRICE',
    MAX(RATING) AS 'MAXIMUM RATING',
    ROUND(AVG(SCREEN_SIZE), 2) AS 'SCREEN_SIZE',
    ROUND(AVG(BATTERY_CAPACITY), 2) AS 'AVERAGE BATTERY CAPACITY'
FROM
    SMARTPHONES
GROUP BY BRAND_NAME
ORDER BY BRAND_NAME DESC;

/*Group smartphones by whether they have an NFC and get the average
price and rating*/

SELECT 
    HAS_NFC AS 'TRUE OR FALSE',
    ROUND(AVG(PRICE), 2) AS 'AVERAGE PRICE',
    ROUND(AVG(RATING), 2) AS 'AVERAGE RATING'
FROM
    SMARTPHONES
GROUP BY HAS_NFC DESC;
/*Group smartphones by the extended memory available and get 
the average price */
SELECT 
    EXTENDED_MEMORY_AVAILABLE, ROUND(AVG(PRICE), 2) 'PRICE'
FROM
    SMARTPHONES
GROUP BY EXTENDED_MEMORY_AVAILABLE;

/*Group smartphones by the brand and processor brand and get the 
count of models and the average primary camera resolution (rear)*/
SELECT 
    BRAND_NAME,
    PROCESSOR_BRAND,
    COUNT(*)  AS 'NUM PHONES',
    ROUND(AVG(PRIMARY_CAMERA_REAR), 2) AS 'RPIMARY CAMERA RESOLUTION'
FROM
    SMARTPHONES
GROUP BY BRAND_NAME , PROCESSOR_BRAND;

/*Find the top most 5 costly phone brand*/
SELECT 
    BRAND_NAME, MAX(PRICE) AS 'COSTLY PHONE'
FROM
    SMARTPHONES
GROUP BY BRAND_NAME 
ORDER BY PRICE  DESC LIMIT 5;

/*Which brand makes the smallest screen smartphones */
SELECT 
    BRAND_NAME,
    ROUND(AVG(SCREEN_SIZE), 2) AS 'AVERAGE SCREEN_SIZE'
FROM
    SMARTPHONES
GROUP BY BRAND_NAME
ORDER BY SCREEN_SIZE ASC
LIMIT 1;

/* Group smartphones by the brand, and find the brand with 
the highest number of models that have NFC and IR Blaster */
SELECT 
    BRAND_NAME, COUNT(*) AS 'COUNT'
FROM
    SMARTPHONES
WHERE
    HAS_NFC = 'TRUE'
        AND HAS_IR_BLASTER = 'TRUE'
GROUP BY BRAND_NAME
ORDER BY COUNT DESC
LIMIT 1; 

/*Find all samsung 5g enabled smartphones and find out the 
avg price for NFC and Non_NFC phones */
SELECT 
    HAS_NFC, ROUND(AVG(PRICE), 2) AS 'AVERAGE PRICE '
FROM
    SMARTPHONES
WHERE
    BRAND_NAME = 'SAMSUNG'
GROUP BY HAS_5G;

/*Find the avg rating of smartphones brands which have more
than 20 phones*/
SELECT BRAND_NAME , COUNT(*) AS 'COUNT',
AVG(RATING) AS 'AVG RATING' FROM SMARTPHONES
GROUP BY BRAND_NAME HAVING COUNT > 40 ORDER BY AVG_RATING DESC;

/* Find the top 3 brands with the highest avg ram that have a 
refresh rate of at least 90 HZ and fast charging and don't consider
brands which have less than 10 phones */
SELECT 
    BRAND_NAME, AVG(RAM_CAPACITY) AS 'AVG RAM'
FROM
    SMARTPHONES
WHERE
    REFRESH_RATE > 90
        AND FAST_CHARGING_AVAILABLE = 1
GROUP BY BRAND_NAME
HAVING COUNT(*) > 10
ORDER BY 'AVG RAM' DESC
LIMIT 3;

/* Find the avg price of all the phones brands with avg rating
> 70 and num phones more than 10 among all 5g enabled phones*/
SELECT BRAND_NAME, AVG(PRICE) AS
'AVG_PRICE' FROM SMARTPHONES WHERE HAS_5G = 'TRUE'
GROUP BY BRAND_NAME HAVING AVG(RATING) > 70 AND COUNT(*) > 10;




