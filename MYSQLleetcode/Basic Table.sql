USE DEMO;
/*--Create table of deposit--*/ 
CREATE TABLE DEPOSIT (
    ACTNO INT,
    CNAME VARCHAR(30),
    BNAME VARCHAR(30),
    AMOUNT NUMERIC(10 , 2 ),
    ADATE DATE
);
INSERT INTO DEPOSIT
            VALUES
            (100, 'ANIL', 'VRCE', 1000.00, '1995-03-01'),
            (101, 'SUNIL', 'AJNI', 5000.00, '1996-01-04'),
            (102, 'MEHUL', 'KAROLBAGH', 3500.00, '1995-11-17'),
            (104, 'MADHURI', 'CHANDNI', 1200.00, '1995-12-17'),
            (105, 'PARMOD', 'M.G.ROAD', 3000.00, '1996-03-27'),
            (106, 'SANDIP', 'ANDHERI', 2000.00, '1996-03-31'),
            (107, 'SHIVANI', 'VIRAR', 1000.00, '1995-09-05'),
            (108, 'KRANTI', 'NEHRU PLACE', 5000.00, '1995-07-02'),
			(109, 'NAREN', 'POWAI', 7000.00, '1995-08-10');
/*--Create table Branch--*/
CREATE TABLE BRANCH (
    BNAME VARCHAR(30),
    CITY VARCHAR(30)
);  
INSERT INTO BRANCH
			VALUES
            ('VRCE', 'NAGPUR'),
            ('AJNI', 'NAGPUR'),
            ('KAROLBAGH', 'DELHI'),
            ('CHANDNI', 'DELHI'),
            ('DHARAMPETH', 'NAGPUR'),
            ('M.G.ROAD', 'BANGLORE'),
            ('ANDHERI', 'MUMBAI'),
            ('VIRAR', 'MUMBAI'),
            ('NEHRU PLACE', 'DELHI'),
            ('POWAI', 'MUMBAI');
/*-- Create Customer table--*/
CREATE TABLE CUSTOMERSS (
    CNAME VARCHAR(30),
    CITY VARCHAR(30)
); 
INSERT INTO CUSTOMERSS
            VALUES
			('ANIL', 'KOLKATA'),
            ('SUNIL', 'DELHI'),
            ('MEHUL', 'BARODRA'),
            ('MANDAR', 'PATNA'),
            ('MADHURI', 'NAGPUR'),
            ('PARMOD', 'NAGPUR'),
            ('SANDIP', 'SURAT'),
            ('SHIVANI', 'MUMBAI'),
            ('KRANTI', 'MUMBAI'),
            ('NAREN', 'MUMBAI');
/*-- Create table Borrow --*/
CREATE TABLE BORROW (
    LOANNO INT,
    CNAME VARCHAR(30),
    BNAME VARCHAR(30),
    AMOUNT NUMERIC(10 , 2 )
);
INSERT INTO BORROW
            VALUES
            (201, 'ANIL', 'VRCE', 1000.00),
            (206, 'MEHUL', 'AJNI', 5000.00),
            (311, 'SUNIL', 'DHARAMPETH', 3000.00),
            (321, 'MADHURI', 'ANDHERI', 2000.00),
            (375, 'PARMOD', 'VIRAR', 8000.00),
            (481, 'KRANTI', 'NEHRU PLACE', 3000.00);
SELECT 
    *
FROM
    DEPOSIT;
    
SELECT 
    *
FROM
    BORROW;
    
SELECT 
    *
FROM
    CUSTOMERSS;
    
SELECT 
    *
FROM
    BRANCH;
SELECT 
    CNAME
FROM
    CUSTOMERSS
WHERE
    CITY = 'NAGPUR';
    
SELECT 
    CNAME
FROM
    DEPOSIT
WHERE
    AMOUNT > 4000.00;
SELECT 
    ADATE
FROM
    DEPOSIT
WHERE
    CNAME = 'ANIL';
SELECT 
    BNAME
FROM
    BRANCH
WHERE
    CITY = 'MUMBAI';
SELECT 
    CNAME
FROM
    BORROW
WHERE
    LOANNO = 206;
SELECT 
    CNAME
FROM
    DEPOSIT
WHERE
    BNAME = 'VRCE';
    
SELECT 
    BNAME
FROM
    BRANCH
WHERE
    CITY = 'DELHI';
SELECT 
    CNAME
FROM
    DEPOSIT
WHERE
    ADATE > '1995-12-01';
SELECT 
    ACTNO, AMOUNT
FROM
    DEPOSIT
WHERE
    ADATE >= '1995-06-01'
        AND ADATE <= '1995-12-01';
SELECT 
    CITY
FROM
    BRANCH
WHERE
    BNAME = 'KAROLBAGH';

 
