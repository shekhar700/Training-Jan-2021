--Write a query to rank employees based on their salary for a month
SELECT	FirstName ,
		Salary ,
		DATENAME(month, HireDate) AS Month ,
		DENSE_RANK() OVER (PARTITION BY MONTH(HireDate) ORDER BY Salary DESC) AS Rank
		FROM Employees ;





--Select 4th Highest salary from employee table using ranking function
SELECT FirstName , Salary 
FROM ( SELECT * , DENSE_RANK() OVER ( ORDER BY Salary DESC ) AS ranking FROM Employees) AS a 
WHERE ranking = 4 ;

-- 2nd method
--Selecting Distinct top 4 salaries , then selecting minimum salary(4th) , then displaying all fields for 4th salary
-- SELECT * FROM Employees WHERE Salary = 
--          (
--             SELECT MIN(Salary) FROM Employees 
--             WHERE  Salary IN (
--                                  SELECT DISTINCT TOP 4
--                                      Salary FROM Employees 
--                                          ORDER BY Salary DESC
--                              )
--         ) ;





--Get department, total salary with respect to a department from employee table.
SELECT DepartmentID , SUM( Salary ) AS TotalSalary FROM Employees GROUP BY DepartmentID ;




--Get department, total salary with respect to a department from employee table order by total salary descending
SELECT DepartmentID , SUM( Salary ) AS TotalSalary FROM Employees GROUP BY DepartmentID ORDER BY TotalSalary DESC;






--Get department wise maximum salary from employee table order by salary ascending
SELECT DepartmentID , Max(Salary) AS MaxSalary
FROM Employees 
GROUP BY DepartmentID 
ORDER BY Max(Salary) ASC ;

-- by rank
-- SELECT DepartmentID , Salary , DENSE_RANK() OVER ( PARTITION BY DepartmentID ORDER BY Salary ASC) AS ranking
-- FROM Employees ;






--Get department wise minimum salary from employee table order by salary ascending
SELECT DepartmentID , MIN(Salary) AS MaxSalary
FROM Employees 
GROUP BY DepartmentID 
ORDER BY MIN(Salary) ASC ;

-- by rank
-- SELECT * FROM ( SELECT DENSE_RANK() OVER ( PARTITION BY DepartmentID ORDER BY Salary ASC ) as ranking, DepartmentID ,Salary FROM Employees ) Z  WHERE Z.ranking=1 ORDER BY Salary ASC;






--Select department, total salary with respect to a department from employee table where total salary greater than 50000 order by TotalSalary descending
SELECT DepartmentID , SUM( Salary ) AS TotalSalary 
FROM Employees 
GROUP BY DepartmentID 
HAVING SUM( Salary ) > 50000 ;

-- 2nd query
-- SELECT * FROM ( SELECT DepartmentID,SUM(Salary) as ranking  FROM Employees GROUP BY DepartmentID) Z WHERE Z.ranking > 5000 ORDER BY Z.ranking DESC;






