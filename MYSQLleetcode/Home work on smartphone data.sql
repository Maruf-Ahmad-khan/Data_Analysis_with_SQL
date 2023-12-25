USE DEMO;
SELECT 
    *
FROM
    insurance_data;
    
/*Show records of 'male' patient from 'southwest' region.*/
SELECT 
    *
FROM
    INSURANCE_DATA
WHERE
    GENDER = 'MALE' AND REGION = 'SOUTHWEST';
    
/* Show all records having bmi in range 30 to 45 both inclusive. */
SELECT 
    BMI
FROM
    INSURANCE_DATA
WHERE
    BMI BETWEEN 30 AND 45;
    
/* Show minimum and maximum bloodpressure of diabetic patient who smokes.
 Make column names as MinBP and MaxBP respectively. */
 
 SELECT 
    MAX(BLOODPRESSURE) AS MAXBP, MIN(BLOODPRESSURE) AS MINBP
FROM
    INSURANCE_DATA
WHERE
    DIABETIC = 'YES' AND SMOKER = 'YES';
    
/* Find no of unique patients who are not from southwest region. */
SELECT 
    COUNT(DISTINCT (PATIENTID)) AS unique_patients_not_southwest
FROM
    INSURANCE_DATA
WHERE
    REGION != 'SOUTHWEST'; 
    /*Select all records of south region.*/
SELECT 
    *
FROM
    INSURANCE_DATA
WHERE
    REGION LIKE 'SOUTH%';
    
/*No of pateint belo 17 years of age having normal blood pressure as per below formula -

BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)

Note: Formula taken just for practice, don't take in real sense.*/
    
SELECT 
    COUNT(*)
FROM
    INSURANCE_DATA
WHERE
    AGE < 17
        AND (BLOODPRESSURE BETWEEN 80 + (AGE * 2) AND 100 + (AGE * 2));
 


