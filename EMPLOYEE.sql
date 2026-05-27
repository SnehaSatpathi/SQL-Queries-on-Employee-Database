USE EMPLOYEE;
CREATE TABLE
   EMPLOYEE(
        EMPNO       INT PRIMARY KEY,
        ENAME       VARCHAR(255),
        JOB         VARCHAR(255),
        MGR         INT,
        HIREDATE    DATE,
        SAL         INT,
        COMM        INT,
        DEPTNO      INT,
        FOREIGN KEY(DEPTNO) REFERENCES DEPARTMENT(DEPTNO)
	);
SHOW TABLES;