-- Use Database
USE EMPLOYEE;


-- 1. Display employees who joined before
--    30-JUN-1980 or after 31-DEC-1981

SELECT *
FROM EMPLOYEE
WHERE HIREDATE < '1980-06-30'
OR HIREDATE > '1981-12-31';


-- 2. Display employees whose second letter is A

SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';


-- 3. Display employees whose names are
--    exactly five characters long

SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '_____';


-- 4. Display employees whose second letter is A

SELECT ENAME
FROM EMPLOYEE
WHERE ENAME LIKE '_A%';


-- 5. Display employees who are not working as
--    salesman, clerk or analyst

SELECT ENAME
FROM EMPLOYEE
WHERE JOB NOT IN ('SALESMAN','CLERK','ANALYST');


-- 6. Display employee name with annual salary
--    highest salary should appear first

SELECT ENAME,
       SAL * 12 AS ANNUAL_SALARY
FROM EMPLOYEE
ORDER BY ANNUAL_SALARY DESC;


-- 7. Display name, salary, HRA, PF, DA and
--    total salary for each employee

SELECT ENAME,
       SAL,
       SAL * 0.15 AS HRA,
       SAL * 0.10 AS DA,
       SAL * 0.05 AS PF,
       (SAL + (SAL * 0.15) + (SAL * 0.10))
       - (SAL * 0.05) AS TOTALSAL
FROM EMPLOYEE
ORDER BY TOTALSAL;


-- 8. Update salary by 10% increment for employees
--    who are not eligible for commission

UPDATE EMPLOYEE
SET SAL = SAL + (SAL * 0.10)
WHERE COMM IS NULL;


-- 9. Display employees whose salary becomes
--    more than 3000 after 20% increment

SELECT ENAME,
       SAL,
       SAL + (SAL * 0.20) AS INCREMENTED_SALARY
FROM EMPLOYEE
WHERE (SAL + (SAL * 0.20)) > 3000;


-- 10. Display employees whose salary contains
--     at least 3 digits

SELECT ENAME, SAL
FROM EMPLOYEE
WHERE SAL >= 100;




