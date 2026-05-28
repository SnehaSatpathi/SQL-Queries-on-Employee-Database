-- Use Database
USE EMPLOYEE;


-- 1. Display empno, ename and department name
--    instead of department number using CASE
--    (alternative of DECODE in MySQL)

SELECT EMPNO,
       ENAME,
       CASE DEPTNO
            WHEN 10 THEN 'RESEARCH'
            WHEN 20 THEN 'ACCOUNTING'
            WHEN 30 THEN 'SALES'
            WHEN 40 THEN 'OPERATIONS'
       END AS DEPARTMENT_NAME
FROM EMPLOYEE;


-- 2. Display your age in days

SELECT DATEDIFF(CURDATE(),'2005-01-01') AS AGE_IN_DAYS;


-- 3. Display your age in months

SELECT TIMESTAMPDIFF(MONTH,'2005-01-01',CURDATE())
AS AGE_IN_MONTHS;


-- 4. Display current date in formatted style

SELECT DATE_FORMAT(
       CURDATE(),
       '%D %M %W %Y'
       ) AS FORMATTED_DATE;


-- 5. Display output:
--    "Scott has joined the company on Wednesday..."

SELECT CONCAT(
       ENAME,
       ' has joined the company on ',
       DATE_FORMAT(HIREDATE,
       '%W %D %M %Y')
       ) AS EMPLOYEE_DETAILS
FROM EMPLOYEE
WHERE ENAME = 'SCOTT';


-- 6. Find nearest Saturday after current date
SELECT NEXT_DAY(CURDATE(), 'SATURDAY');


-- 7. Display current time

SELECT CURTIME() AS CURRENT_TIME;


-- 8. Display date three months before current date

SELECT DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
AS THREE_MONTHS_BEFORE;


-- 9. Display employees who joined in December

SELECT *
FROM EMPLOYEE
WHERE MONTH(HIREDATE) = 12;


-- 10. Display employees whose first 2 characters
--     of hire year equal last 2 digits of salary

SELECT *
FROM EMPLOYEE
WHERE LEFT(YEAR(HIREDATE),2) =
RIGHT(SAL,2);


-- 11. Display employees whose 10% salary equals
--     joining year

SELECT *
FROM EMPLOYEE
WHERE (SAL * 0.10) = YEAR(HIREDATE);


-- 12. Display employees who joined before
--     15th day of month

SELECT *
FROM EMPLOYEE
WHERE DAY(HIREDATE) < 15;


-- 13. Display employees who joined before
--     15th of month

SELECT *
FROM EMPLOYEE
WHERE DAY(HIREDATE) < 15;


-- 14. Display employees whose joining date
--     is available in deptno

SELECT *
FROM EMPLOYEE
WHERE DAY(HIREDATE) = DEPTNO;
