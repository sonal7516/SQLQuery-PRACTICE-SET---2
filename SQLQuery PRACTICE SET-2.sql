---- PRACTICE SET - 2---


USE Employee_Details
--Q.1- Select all the employee group by deptno and sal in descending order.--

SELECT e.EMP_ID, e.EMP_NAME, e.DEPARTMENT_ID, e.Salary FROM Employee e GROUP BY DEPARTMENT_ID ORDER BY Salary DESC

--Q.2- How can I create an empty table Employee2 with same structure as Employee?

SELECT * INTO Employee2 FROM EMPLOYEE WHERE 1=0

--Q.3- How to retrive record where sal between 10000 to 20000?--

SELECT * FROM Employee WHERE Salary BETWEEN 10000 AND 20000

--Q.4. If there are two tables Employee and Employee1, and both have common record. How can I fetch all the recods but common records only once?--

SELECT * FROM Employee 
UNION 
SELECT * FROM Employee1

--Q.6- How to fetch only common records from two tables emp and emp1?--
SELECT * FROM Employee 
INTERSECT 
SELECT * FROM Employee1

--Q.7- How can I retrive all records of emp2 those should not present in emp1--

SELECT * FROM Employee1 
WHERE EMP_NAME NOT IN
(SELECT EMP_NAME FROM Employee)

--Q.8- Count the total salary deptno wise where more than 2 employees exist.--

SELECT DEPARTMENT_ID, SUM(Salary) AS TOTAL_SALARY FROM Employee
GROUP BY DEPARTMENT_ID HAVING COUNT(EMP_ID)>2

--Q.9- Using Aggregate functions: Count,Min,Max,Sum,Avg--
---COUNT--
SELECT COUNT(EMP_ID) FROM EMPLOYEE
SELECT COUNT(EMP_ID) FROM EMPLOYEE WHERE EMP_NAME LIKE '%A'

---MIN & MAX--

SELECT MAX(Salary) FROM Employee WHERE DEPARTMENT_ID = 10

SELECT MIN(Salary) FROM Employee

---AVG---
SELECT AVG(Salary) FROM Employee

---SUM---
SELECT SUM(Salary) FROM Employee

