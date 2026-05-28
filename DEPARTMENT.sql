CREATE DATABASE EMPLOYEE;

USE EMPLOYEE;

CREATE TABLE
    DEPARTMENT(
        DEPTNO INT PRIMARY KEY,
        DNAME VARCHAR(255)
	);
SHOW TABLES;

-- Insert Department Records
INSERT INTO 
       DEPARTMENT VALUES
                  (10, "RESEARCH"),
                  (20, "ACCOUNTING"),
                  (30, "SALES"),
                  (40, "OPERATIONS");
