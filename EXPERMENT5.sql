-- Use Database
USE EMPLOYEE;


-- 1. Display total number of employees

SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEE;


-- 2. Display total salary paid to all employees
SELECT SUM(SAL) AS TOTAL_SALARY
FROM EMPLOYEE;


-- 3. Display maximum salary

SELECT MAX(SAL) AS MAXIMUM_SALARY
FROM EMPLOYEE;


-- 4. Display minimum salary

SELECT MIN(SAL) AS MINIMUM_SALARY
FROM EMPLOYEE;


-- 5. Display average salary

SELECT AVG(SAL) AS AVERAGE_SALARY
FROM EMPLOYEE;


-- 6. Display maximum salary paid to clerk

SELECT MAX(SAL) AS MAX_CLERK_SALARY
FROM EMPLOYEE
WHERE JOB = 'CLERK';


-- 7. Display maximum salary in department 20

SELECT MAX(SAL) AS MAX_SALARY_DEPT20
FROM EMPLOYEE
WHERE DEPTNO = 20;

-- 8. Display minimum salary paid to salesman

SELECT MIN(SAL) AS MIN_SALESMAN_SALARY
FROM EMPLOYEE
WHERE JOB = 'SALESMAN';


-- 9. Display average salary drawn by managers

SELECT AVG(SAL) AS AVG_MANAGER_SALARY
FROM EMPLOYEE
WHERE JOB = 'MANAGER';


-- 10. Display total salary drawn by analysts
--     working in department 40

SELECT SUM(SAL) AS TOTAL_ANALYST_SALARY
FROM EMPLOYEE
WHERE JOB = 'ANALYST'
AND DEPTNO = 40;


-- 11. Display employee names in uppercase

SELECT UPPER(ENAME) AS UPPERCASE_NAME
FROM EMPLOYEE;


-- 12. Display employee names in lowercase

SELECT LOWER(ENAME) AS LOWERCASE_NAME
FROM EMPLOYEE;


-- 13. Display employee names in proper case

SELECT CONCAT(
       UPPER(LEFT(ENAME,1)),
       LOWER(SUBSTRING(ENAME,2))
       ) AS PROPER_CASE_NAME
FROM EMPLOYEE;


-- 14. Display length of your name

SELECT LENGTH('SNEHA') AS NAME_LENGTH;


-- 15. Display length of all employee names

SELECT ENAME,
       LENGTH(ENAME) AS NAME_LENGTH
FROM EMPLOYEE;
