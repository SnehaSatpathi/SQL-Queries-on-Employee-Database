USE EMPLOYEE;

-- 1. Display the names of employees from department number 10 with salary greater than that of any employee working in other departments. 
SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = 10 
  AND SAL > ANY (SELECT SAL FROM EMPLOYEE WHERE DEPTNO != 10);
  
  
  
-- 2. Display the names of employee from department number 10 with salary greater than that of all employee working in other departments.
SELECT ENAME
FROM EMPLOYEE
WHERE DEPTNO = 10 
  AND SAL > ALL (SELECT SAL FROM EMPLOYEE WHERE DEPTNO != 10);
  

-- 3. Display the details of employees who are in sales dept and grade is 3.

SELECT E.* 
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO 
WHERE D.DNAME = 'SALES' 
AND E.SAL BETWEEN 1401 AND 2000;



-- 4. Display those who are not managers and who are managers of anyone.

-- To display non-managers:
SELECT * FROM EMPLOYEE 
WHERE EMPNO NOT IN (SELECT DISTINCT MGR FROM EMPLOYEE WHERE MGR IS NOT NULL);

-- To display managers:
SELECT * FROM EMPLOYEE
WHERE EMPNO IN (SELECT DISTINCT MGR FROM EMPLOYEE WHERE MGR IS NOT NULL);



-- 5. Display those employees whose manager name is jones.
SELECT E1.ENAME
FROM EMPLOYEE E1
JOIN EMPLOYEE E2 ON E1.MGR = E2.EMPNO 
WHERE E2.ENAME = 'JONES';


-- 6.  Display ename who are working in sales dept.
SELECT E.ENAME
FROM EMPLOYEE E
JOIN DEPARTMENT D ON E.DEPTNO = D. DEPTNO
WHERE D.DNAME = 'SALES';


-- 7. Display employee name, deptname, salary and comm. For those sal in between 2000 to 5000 while location is chicago.
SELECT E.ENAME, D.DNAME, E.SAL, E.COMM
FROM EMPLOYEE E 
JOIN DEPARTMENT D ON E.DEPTNO = D.DEPTNO
WHERE E.SAL BETWEEN 2000 AND 5000 
  AND D.LOC = 'CHICAGO';
  
  
-- 8. Display those employees whose salary greater than his manager salary.
SELECT E1.ENAME
FROM EMP E1 
JOIN EMP E2 ON E1.MGR = E2.EMPNO 
WHERE E1.SAL > E2.SAL;



-- 9.  Display those employees who are working in the same dept where his manager is working.

SELECT E1.ENAME 
FROM EMPLOYEE E1 
JOIN EMPLOYEE E2 ON E1.MGR = E2.EMPNO 
WHERE E1.DEPTNO = E2.DEPTNO;




-- 10. Display grade and employees name for the dept no 10 or 30 but grade is not 4, while joined the company before 31-dec-82.
SELECT
  E.ENAME, E.SAL, E.DEPTNO, E.HIREDATE, S.GRADE
FROM
  EMPLOYEE E 
JOIN
  SALGRADE S ON E.SAL BETWEEN S.MINPAY AND S.MAXPAY
WHERE
  E.DEPTNO IN (10, 30) 
  AND S.GRADE <> 4 
  AND E.HIREDATE < '1982-12-31';









