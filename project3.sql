CREATE database project3;
USE project3;
show tables;

-- selecting table for analysis
SELECT *
FROM hrprimarydetails;

-- selecting all the males
SELECT Name, Gender
FROM hrprimarydetails
WHERE Gender="Male"
ORDER by Name;

-- selecting all the females
SELECT Name, Gender
FROM hrprimarydetails
WHERE Gender="Female"
ORDER by Name;

-- number of total males
SELECT count(Gender)
FROM hrprimarydetails
WHERE GENDER="Male";

-- number of total females 
SELECT count(Gender)
FROM hrprimarydetails
WHERE GENDER="Female";

-- number of total Others 
SELECT count(Gender)
FROM hrprimarydetails
WHERE GENDER<>"Female"
AND GENDER<>"Male";

/*Conclusion
Male 423
Female 432
Other 20
Total 875
*/


-- name of people from Mumbai
SELECT Name, Gender
FROM hrprimarydetails
WHERE Location='Mumbai';
 
-- count of people from Mumbai
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Mumbai";

-- males of mumbai
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Mumbai"
AND Gender='Male';

-- females of mumbai
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Mumbai"
AND Gender='Female';

-- Others of mumbai
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Mumbai"
AND Gender<>'Female'
AND Gender<>'Male';


-- name of people from Bangalore
SELECT Name, Gender
FROM hrprimarydetails
WHERE Location='Bengaluru';
 
-- count of people from Bengaluru
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Bengaluru";

-- males of Bengaluru
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Bengaluru"
AND Gender='Male';

-- females of Bengaluru
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Bengaluru"
AND Gender='Female';

-- Others of Bengaluru
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="Bengaluru"
AND Gender<>'Female'
AND Gender<>'Male';


-- name of people from New Delhi
SELECT Name, Gender
FROM hrprimarydetails
WHERE Location='New Delhi';
 
-- count of people from New Delhi
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="New Delhi";

-- males of New Delhi
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="New Delhi"
AND Gender='Male';

-- females of New Delhi
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="New Delhi"
AND Gender='Female';

-- Others of New Delhi
SELECT Count(Name)
FROM hrprimarydetails
WHERE Location="New Delhi"
AND Gender<>'Female'
AND Gender<>'Male';

/* Conclusion
People from Delhi-337
Male-157
Female-171
Other-9

People from Bengaluru-233
Male-120
Female-108
Other-5

People from Mumbai-305
Male-146
Female-153
Other-6
*/


-- Analysis by departments
SELECT DISTINCT Department
FROM hrprimarydetails; -- 12 Departments exist in the company

-- Number of employees in each department
SELECT Count(Name), Department
FROM hrprimarydetails
GROUP by Department;

-- Number of people of each gender in department
-- Sales
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Sales'
GROUP by Gender;

-- Engineering
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Engineering'
GROUP by Gender;

-- Legal
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Legal'
GROUP by Gender;

-- Support
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Support'
GROUP by Gender;

-- HR
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Human Resources'
GROUP by Gender;

-- Business Development
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Business Development'
GROUP by Gender;

-- Product Management
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Product Management'
GROUP by Gender;

-- Training
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Training'
GROUP by Gender;

-- R&D
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Research and Development'
GROUP by Gender;

-- Accounting
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Accounting'
GROUP by Gender;

-- Services
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Services'
GROUP by Gender;

-- Marketing
SELECT Count(Name), Department, Gender
FROM hrprimarydetails
WHERE Department='Marketing'
GROUP by Gender;

-- Analysis of Salary
-- Min and Max
SELECT min(Annual_salary), max(Annual_salary)
FROM hrprimarydetails;

-- Salary and Gender (Below 500000)
SELECT count(Name),Gender
FROM hrprimarydetails
WHERE Annual_salary<= 500000
GROUP BY Gender;

-- (Above 500000)
SELECT count(Name),Gender
FROM hrprimarydetails
WHERE Annual_salary>= 500000
GROUP BY Gender;

-- Salary and Department (below 500000)
SELECT count(Name), Department
FROM hrprimarydetails
WHERE Annual_salary<= 500000
GROUP BY Department;

-- (Above 500000)
SELECT count(Name), Department
FROM hrprimarydetails
WHERE Annual_salary>= 500000
GROUP BY Department;

-- Salary and Location (Below 500000)
SELECT count(Name), Location
FROM hrprimarydetails
WHERE Annual_salary<= 500000
GROUP BY Location;

-- (Above 500000)
SELECT count(Name), Location
FROM hrprimarydetails
WHERE Annual_salary>= 500000
GROUP BY Location;


-- Joining another table for more deep analysis
SELECT p.Name, p.Gender, p.Department, p.Annual_salary, p.Location, s.Rating, s.Distance , s.Age, s.Tenure
FROM hrprimarydetails p
JOIN hrsecondarydetails s
ON p.Name=s.Name;

-- Copying all data to new table called masterdata
CREATE table masterdata(
SELECT p.Name, p.Gender, p.Department, p.Annual_salary, p.Location, s.Rating, s.Distance , s.Age, s.Tenure
FROM hrprimarydetails p
JOIN hrsecondarydetails s
ON p.Name=s.Name);


-- Info about CEO
SELECT NAME 
FROM hrprimarydetails
WHERE Department='CEO';

SELECT Annual_salary 
FROM hrprimarydetails
WHERE Department='CEO';

SELECT Location
FROM hrprimarydetails
WHERE Department='CEO';

SELECT Age
FROM masterdata
WHERE Department='CEO';

SELECT Tenure
FROM masterdata
WHERE Department='CEO';

SELECT Distance
FROM masterdata
WHERE Department='CEO';

SELECT Rating
FROM masterdata
WHERE Department='CEO';

-- Ratings Analysis
-- Rating and Gender
SELECT count(Rating),Rating,Gender
FROM masterdata
WHERE Rating='Very Good'
GROUP BY Gender;

SELECT count(Rating),Rating,Gender
FROM masterdata
WHERE Rating='Good'
GROUP BY Gender;

SELECT count(Rating),Rating,Gender
FROM masterdata
WHERE Rating='Average'
GROUP BY Gender;

SELECT count(Rating),Rating,Gender
FROM masterdata
WHERE Rating='Poor'
GROUP BY Gender;

SELECT count(Rating),Rating,Gender
FROM masterdata
WHERE Rating='Very Poor'
GROUP BY Gender;

-- Rating and Location
SELECT count(Rating),Rating,Location
FROM masterdata
WHERE Rating='Very Good'
GROUP BY Location;

SELECT count(Rating),Rating,Location
FROM masterdata
WHERE Rating='Good'
GROUP BY Location;

SELECT count(Rating),Rating,Location
FROM masterdata
WHERE Rating='Average'
GROUP BY Location;

SELECT count(Rating),Rating,Location
FROM masterdata
WHERE Rating='Poor'
GROUP BY Location;

SELECT count(Rating),Rating,Location
FROM masterdata
WHERE Rating='Very Poor'
GROUP BY Location;

-- Age Analysis
-- Min and Max age
SELECT min(Age), max(Age)
FROM masterdata;

SELECT count(Name)
from masterdata
WHERE Age=26;

SELECT count(Name)
from masterdata
WHERE Age=41;

SELECT count(Name)
from masterdata
WHERE Age BETWEEN 26 AND 33;

SELECT count(Name)
from masterdata
WHERE Age BETWEEN 33 AND 41;

SELECT AVG(AGE), Location
from masterdata
GROUP BY Location;

SELECT AVG(AGE), Department
from masterdata
GROUP BY Department;

SELECT AVG(AGE), Gender
from masterdata
GROUP BY Gender;

-- Analysis of Tenure
-- min and max
SELECT min(Tenure), max(Tenure)
FROM masterdata;

SELECT Name, Location, Department, Gender, Age
FROM masterdata
WHERE Tenure=0;


SELECT Name, Location, Department, Gender, Age
FROM masterdata
WHERE Tenure=20.4;

SELECT Name, Location, Department, Gender, Age
FROM masterdata
ORDER BY Tenure DESC
LIMIT 5;

-- Tenure and Department
SELECT Department, AVG(Tenure)
FROM masterdata
GROUP BY Department;

-- Tenure and Location
SELECT Location,AVG(Tenure)
FROM masterdata
GROUP BY Location;

-- Tenure and Gender
SELECT Gender, AVG(Tenure)
FROM masterdata
GROUP BY Gender;

-- Tenure and Rating
SELECT Rating, AVG(Tenure)
FROM masterdata
GROUP BY Rating;


-- Other analysis
-- Avg Distance from Ofc
SELECT AVG(Distance)
FROM masterdata;

-- Min and max distance
SELECT min(distance), max(distance)
FROM masterdata;

-- Nearest and Farest
SELECT Name, Gender, Location, Department, Rating, Distance 
FROM masterdata
WHERE distance=1 OR distance=29
ORDER BY Distance;
 
-- Avg Annual salary in different State
SELECT AVG(Annual_salary), Location
FROM masterdata
GROUP BY Location
ORDER BY AVG(Annual_salary) DESC;


-- Avg Annual salary in different Department
SELECT AVG(Annual_salary), Department
FROM masterdata
GROUP BY Department
ORDER BY AVG(Annual_salary) DESC;

-- Avg Annual salary in different Gender
SELECT AVG(Annual_salary), Gender
FROM masterdata
GROUP BY Gender
ORDER BY AVG(Annual_salary) DESC;


-- End Analysis
