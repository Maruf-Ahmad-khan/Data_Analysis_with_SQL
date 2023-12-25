USE DEMO;
SELECT * FROM INSURANCE_DATA;
SELECT * FROM INSURANCE_DATA WHERE REGION LIKE  'SOUTH%';

/*Total claim amount from male smoker.*/

SELECT 
    SMOKER, GENDER, SUM(CLAIM) AS CLAIM_AMOUNT
FROM
    INSURANCE_DATA
WHERE
    GENDER = 'MALE';
    
/*No of patient having normal blood pressure. Normal range[90-120]*/
SELECT 
    COUNT(*) AS HAVING_NORMAL_BP
FROM
    INSURANCE_DATA
WHERE
    BLOODPRESSURE BETWEEN 90 AND 120;
    
/*What is the average claim amount for non-smoking
 female patients who are diabetic? */
 
SELECT 
    AVG(CLAIM)
FROM
    INSURANCE_DATA
WHERE
    GENDER = 'FEMALE' AND SMOKER = 'NO';
    
/* Write a SQL query to update the claim amount
 for the patient with PatientID = 1234 to 5000.*/
 UPDATE INSURANCE_DATA SET CLAIM = 5000
 WHERE PATIENTID = 1234;
 
 SELECT * FROM INSURANCE_DATA WHERE PATIENTID = 1234;
 
 /*Write a SQL query to delete all records for patients
 who are smokers and have no children.*/
DELETE FROM  INSURANCE_DATA WHERE SMOKER = 'YES' AND CHILDREN = 0;
 
