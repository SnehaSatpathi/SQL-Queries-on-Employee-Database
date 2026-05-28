-- Select Database
USE EMPLOYEE;

-- Create Backup Table from EMPLOYEE
CREATE TABLE EMPLOYEE_MASTER AS
(
    SELECT * FROM EMPLOYEE
);

-- Delete Employees from Department 10
DELETE FROM EMPLOYEE_MASTER
WHERE DEPTNO = 10;

-- Increase Salary by 10% for Department 20
UPDATE EMPLOYEE_MASTER
SET SAL = SAL + (SAL * 0.10)
WHERE DEPTNO = 20;

-- Modify Salary Datatype
ALTER TABLE EMPLOYEE_MASTER
MODIFY SAL DECIMAL(10,2);

-- Delete Table Permanently
DROP TABLE EMPLOYEE_MASTER;
            
